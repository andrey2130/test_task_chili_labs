import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_chili_labs/feature/gifs_list/domain/entities/gifs_entity.dart';

part 'gifs_model.freezed.dart';
part 'gifs_model.g.dart';

@freezed
abstract class GifsModel with _$GifsModel {
  const factory GifsModel({
    required String id,
    required String title,
    @JsonKey(name: 'preview_url') required String previewUrl,
    @JsonKey(name: 'original_url') required String originalUrl,
    required String username,
  }) = _GifsModel;

  const GifsModel._();

  factory GifsModel.fromJson(Map<String, dynamic> json) =>
      _$GifsModelFromJson(json);

  GifsEntity toEntity() => GifsEntity(
    id: id,
    title: title,
    previewUrl: previewUrl,
    originalUrl: originalUrl,
    username: username,
  );

  factory GifsModel.fromEntity(GifsEntity entity) => GifsModel(
    id: entity.id,
    title: entity.title,
    previewUrl: entity.previewUrl,
    originalUrl: entity.originalUrl,
    username: entity.username,
  );
}
