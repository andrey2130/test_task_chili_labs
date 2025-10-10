// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifs_search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchGifsParams _$SearchGifsParamsFromJson(Map<String, dynamic> json) =>
    _SearchGifsParams(
      query: json['query'] as String,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchGifsParamsToJson(_SearchGifsParams instance) =>
    <String, dynamic>{
      'query': instance.query,
      'limit': instance.limit,
      'offset': instance.offset,
    };
