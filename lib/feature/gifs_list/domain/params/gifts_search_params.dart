import 'package:freezed_annotation/freezed_annotation.dart';

part 'gifts_search_params.freezed.dart';
part 'gifts_search_params.g.dart';

@freezed
abstract class SearchGifsParams with _$SearchGifsParams {
  const factory SearchGifsParams({
    required String query,
    int? limit,
    int? offset,
  }) = _SearchGifsParams;

  factory SearchGifsParams.fromJson(Map<String, dynamic> json) =>
      _$SearchGifsParamsFromJson(json);
}
