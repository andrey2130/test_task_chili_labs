// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifs_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GifsEntity _$GifsEntityFromJson(Map<String, dynamic> json) => _GifsEntity(
  id: json['id'] as String,
  title: json['title'] as String,
  previewUrl: json['previewUrl'] as String,
  originalUrl: json['originalUrl'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$GifsEntityToJson(_GifsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'previewUrl': instance.previewUrl,
      'originalUrl': instance.originalUrl,
      'username': instance.username,
    };
