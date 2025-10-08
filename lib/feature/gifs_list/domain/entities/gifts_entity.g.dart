// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiftsEntity _$GiftsEntityFromJson(Map<String, dynamic> json) => _GiftsEntity(
  id: json['id'] as String,
  title: json['title'] as String,
  previewUrl: json['previewUrl'] as String,
  originalUrl: json['originalUrl'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$GiftsEntityToJson(_GiftsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'previewUrl': instance.previewUrl,
      'originalUrl': instance.originalUrl,
      'username': instance.username,
    };
