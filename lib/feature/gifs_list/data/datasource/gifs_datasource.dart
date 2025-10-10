import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_task_chili_labs/core/constant/api_url.dart';
import 'package:test_task_chili_labs/core/network/dio_client.dart';
import 'package:test_task_chili_labs/feature/gifs_list/data/model/gifs_model.dart';

abstract class GifsDatasource {
  Future<List<GifsModel>> searchGifs({
    required String query,
    int? limit,
    int? offset,
  });
}

@Injectable(as: GifsDatasource)
class GifsDatasourceImpl implements GifsDatasource {
  final DioClient dioClient;
  final Talker talker;

  GifsDatasourceImpl(this.dioClient, this.talker);

  @override
  Future<List<GifsModel>> searchGifs({
    required String query,
    int? limit,
    int? offset,
  }) async {
    try {
      final response = await dioClient.get(
        ApiUrl.searchGifs,
        queryParameters: {
          'q': query,
          'limit': limit ?? 25,
          'offset': offset ?? 0,
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Unexpected status code: ${response.statusCode}');
      }

      final list = (response.data['data'] as List)
          .map(
            (e) => GifsModel(
              id: e['id'] as String,
              title: (e['title'] as String?)?.trim() ?? '',
              previewUrl:
                  (e['images']?['preview_gif']?['url'] as String?) ??
                  (e['images']?['fixed_height_small']?['url'] as String?) ??
                  '',
              originalUrl: (e['images']?['original']?['url'] as String?) ?? '',
              username: (e['username'] as String?) ?? '',
            ),
          )
          .where((m) => m.previewUrl.isNotEmpty && m.originalUrl.isNotEmpty)
          .toList(growable: false);

      return list;
    } catch (e) {
      talker.handle(e);
      rethrow;
    }
  }
}
