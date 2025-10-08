// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiftsModel _$GiftsModelFromJson(Map<String, dynamic> json) => _GiftsModel(
  id: json['id'] as String,
  title: json['title'] as String,
  previewUrl: json['preview_url'] as String,
  originalUrl: json['original_url'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$GiftsModelToJson(_GiftsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'preview_url': instance.previewUrl,
      'original_url': instance.originalUrl,
      'username': instance.username,
    };
