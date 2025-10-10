import 'package:freezed_annotation/freezed_annotation.dart';

part 'gifs_entity.freezed.dart';
part 'gifs_entity.g.dart';

@freezed
abstract class GifsEntity with _$GifsEntity {
  const factory GifsEntity({
    required String id,
    required String title,
    required String previewUrl,
    required String originalUrl,
    required String username,
  }) = _GifsEntity;

  factory GifsEntity.fromJson(Map<String, dynamic> json) =>
      _$GifsEntityFromJson(json);
}
