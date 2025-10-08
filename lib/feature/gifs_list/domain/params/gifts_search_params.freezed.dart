// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifts_search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchGifsParams {

 String get query; int? get limit; int? get offset;
/// Create a copy of SearchGifsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGifsParamsCopyWith<SearchGifsParams> get copyWith => _$SearchGifsParamsCopyWithImpl<SearchGifsParams>(this as SearchGifsParams, _$identity);

  /// Serializes this SearchGifsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGifsParams&&(identical(other.query, query) || other.query == query)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,limit,offset);

@override
String toString() {
  return 'SearchGifsParams(query: $query, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $SearchGifsParamsCopyWith<$Res>  {
  factory $SearchGifsParamsCopyWith(SearchGifsParams value, $Res Function(SearchGifsParams) _then) = _$SearchGifsParamsCopyWithImpl;
@useResult
$Res call({
 String query, int? limit, int? offset
});




}
/// @nodoc
class _$SearchGifsParamsCopyWithImpl<$Res>
    implements $SearchGifsParamsCopyWith<$Res> {
  _$SearchGifsParamsCopyWithImpl(this._self, this._then);

  final SearchGifsParams _self;
  final $Res Function(SearchGifsParams) _then;

/// Create a copy of SearchGifsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? limit = freezed,Object? offset = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchGifsParams].
extension SearchGifsParamsPatterns on SearchGifsParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchGifsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchGifsParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchGifsParams value)  $default,){
final _that = this;
switch (_that) {
case _SearchGifsParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchGifsParams value)?  $default,){
final _that = this;
switch (_that) {
case _SearchGifsParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  int? limit,  int? offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchGifsParams() when $default != null:
return $default(_that.query,_that.limit,_that.offset);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  int? limit,  int? offset)  $default,) {final _that = this;
switch (_that) {
case _SearchGifsParams():
return $default(_that.query,_that.limit,_that.offset);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  int? limit,  int? offset)?  $default,) {final _that = this;
switch (_that) {
case _SearchGifsParams() when $default != null:
return $default(_that.query,_that.limit,_that.offset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchGifsParams implements SearchGifsParams {
  const _SearchGifsParams({required this.query, this.limit, this.offset});
  factory _SearchGifsParams.fromJson(Map<String, dynamic> json) => _$SearchGifsParamsFromJson(json);

@override final  String query;
@override final  int? limit;
@override final  int? offset;

/// Create a copy of SearchGifsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchGifsParamsCopyWith<_SearchGifsParams> get copyWith => __$SearchGifsParamsCopyWithImpl<_SearchGifsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchGifsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchGifsParams&&(identical(other.query, query) || other.query == query)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,limit,offset);

@override
String toString() {
  return 'SearchGifsParams(query: $query, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$SearchGifsParamsCopyWith<$Res> implements $SearchGifsParamsCopyWith<$Res> {
  factory _$SearchGifsParamsCopyWith(_SearchGifsParams value, $Res Function(_SearchGifsParams) _then) = __$SearchGifsParamsCopyWithImpl;
@override @useResult
$Res call({
 String query, int? limit, int? offset
});




}
/// @nodoc
class __$SearchGifsParamsCopyWithImpl<$Res>
    implements _$SearchGifsParamsCopyWith<$Res> {
  __$SearchGifsParamsCopyWithImpl(this._self, this._then);

  final _SearchGifsParams _self;
  final $Res Function(_SearchGifsParams) _then;

/// Create a copy of SearchGifsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? limit = freezed,Object? offset = freezed,}) {
  return _then(_SearchGifsParams(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
