import 'package:freezed_annotation/freezed_annotation.dart';

part 'gifts_entity.freezed.dart';
part 'gifts_entity.g.dart';

@freezed
abstract class GiftsEntity with _$GiftsEntity {
  const factory GiftsEntity({
    required String id,
    required String title,
    required String previewUrl,
    required String originalUrl,
    required String username,
  }) = _GiftsEntity;

  factory GiftsEntity.fromJson(Map<String, dynamic> json) =>
      _$GiftsEntityFromJson(json);
}
