// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifs_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GifsEntity {

 String get id; String get title; String get previewUrl; String get originalUrl; String get username;
/// Create a copy of GifsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GifsEntityCopyWith<GifsEntity> get copyWith => _$GifsEntityCopyWithImpl<GifsEntity>(this as GifsEntity, _$identity);

  /// Serializes this GifsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,previewUrl,originalUrl,username);

@override
String toString() {
  return 'GifsEntity(id: $id, title: $title, previewUrl: $previewUrl, originalUrl: $originalUrl, username: $username)';
}


}

/// @nodoc
abstract mixin class $GifsEntityCopyWith<$Res>  {
  factory $GifsEntityCopyWith(GifsEntity value, $Res Function(GifsEntity) _then) = _$GifsEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String previewUrl, String originalUrl, String username
});




}
/// @nodoc
class _$GifsEntityCopyWithImpl<$Res>
    implements $GifsEntityCopyWith<$Res> {
  _$GifsEntityCopyWithImpl(this._self, this._then);

  final GifsEntity _self;
  final $Res Function(GifsEntity) _then;

/// Create a copy of GifsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? previewUrl = null,Object? originalUrl = null,Object? username = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,previewUrl: null == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GifsEntity].
extension GifsEntityPatterns on GifsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GifsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GifsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GifsEntity value)  $default,){
final _that = this;
switch (_that) {
case _GifsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GifsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GifsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String previewUrl,  String originalUrl,  String username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GifsEntity() when $default != null:
return $default(_that.id,_that.title,_that.previewUrl,_that.originalUrl,_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String previewUrl,  String originalUrl,  String username)  $default,) {final _that = this;
switch (_that) {
case _GifsEntity():
return $default(_that.id,_that.title,_that.previewUrl,_that.originalUrl,_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String previewUrl,  String originalUrl,  String username)?  $default,) {final _that = this;
switch (_that) {
case _GifsEntity() when $default != null:
return $default(_that.id,_that.title,_that.previewUrl,_that.originalUrl,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GifsEntity implements GifsEntity {
  const _GifsEntity({required this.id, required this.title, required this.previewUrl, required this.originalUrl, required this.username});
  factory _GifsEntity.fromJson(Map<String, dynamic> json) => _$GifsEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String previewUrl;
@override final  String originalUrl;
@override final  String username;

/// Create a copy of GifsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GifsEntityCopyWith<_GifsEntity> get copyWith => __$GifsEntityCopyWithImpl<_GifsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GifsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GifsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,previewUrl,originalUrl,username);

@override
String toString() {
  return 'GifsEntity(id: $id, title: $title, previewUrl: $previewUrl, originalUrl: $originalUrl, username: $username)';
}


}

/// @nodoc
abstract mixin class _$GifsEntityCopyWith<$Res> implements $GifsEntityCopyWith<$Res> {
  factory _$GifsEntityCopyWith(_GifsEntity value, $Res Function(_GifsEntity) _then) = __$GifsEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String previewUrl, String originalUrl, String username
});




}
/// @nodoc
class __$GifsEntityCopyWithImpl<$Res>
    implements _$GifsEntityCopyWith<$Res> {
  __$GifsEntityCopyWithImpl(this._self, this._then);

  final _GifsEntity _self;
  final $Res Function(_GifsEntity) _then;

/// Create a copy of GifsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? previewUrl = null,Object? originalUrl = null,Object? username = null,}) {
  return _then(_GifsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,previewUrl: null == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
