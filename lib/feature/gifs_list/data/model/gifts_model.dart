import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifts_entity.dart';

part 'gifts_model.freezed.dart';
part 'gifts_model.g.dart';

@freezed
abstract class GiftsModel with _$GiftsModel {
  const factory GiftsModel({
    required String id,
    required String title,
    @JsonKey(name: 'preview_url') required String previewUrl,
    @JsonKey(name: 'original_url') required String originalUrl,
    required String username,
  }) = _GiftsModel;

  const GiftsModel._();

  factory GiftsModel.fromJson(Map<String, dynamic> json) =>
      _$GiftsModelFromJson(json);

  GiftsEntity toEntity() => GiftsEntity(
    id: id,
    title: title,
    previewUrl: previewUrl,
    originalUrl: originalUrl,
    username: username,
  );

  factory GiftsModel.fromEntity(GiftsEntity entity) => GiftsModel(
    id: entity.id,
    title: entity.title,
    previewUrl: entity.previewUrl,
    originalUrl: entity.originalUrl,
    username: entity.username,
  );
}
