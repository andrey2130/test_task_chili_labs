// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GifsModel _$GifsModelFromJson(Map<String, dynamic> json) => _GifsModel(
  id: json['id'] as String,
  title: json['title'] as String,
  previewUrl: json['preview_url'] as String,
  originalUrl: json['original_url'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$GifsModelToJson(_GifsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'preview_url': instance.previewUrl,
      'original_url': instance.originalUrl,
      'username': instance.username,
    };
