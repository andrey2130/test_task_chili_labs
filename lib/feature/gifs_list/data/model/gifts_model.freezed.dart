// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiftsModel {

 String get id; String get title;@JsonKey(name: 'preview_url') String get previewUrl;@JsonKey(name: 'original_url') String get originalUrl; String get username;
/// Create a copy of GiftsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftsModelCopyWith<GiftsModel> get copyWith => _$GiftsModelCopyWithImpl<GiftsModel>(this as GiftsModel, _$identity);

  /// Serializes this GiftsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,previewUrl,originalUrl,username);

@override
String toString() {
  return 'GiftsModel(id: $id, title: $title, previewUrl: $previewUrl, originalUrl: $originalUrl, username: $username)';
}


}

/// @nodoc
abstract mixin class $GiftsModelCopyWith<$Res>  {
  factory $GiftsModelCopyWith(GiftsModel value, $Res Function(GiftsModel) _then) = _$GiftsModelCopyWithImpl;
@useResult
$Res call({
 String id, String title,@JsonKey(name: 'preview_url') String previewUrl,@JsonKey(name: 'original_url') String originalUrl, String username
});




}
/// @nodoc
class _$GiftsModelCopyWithImpl<$Res>
    implements $GiftsModelCopyWith<$Res> {
  _$GiftsModelCopyWithImpl(this._self, this._then);

  final GiftsModel _self;
  final $Res Function(GiftsModel) _then;

/// Create a copy of GiftsModel
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


/// Adds pattern-matching-related methods to [GiftsModel].
extension GiftsModelPatterns on GiftsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GiftsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GiftsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GiftsModel value)  $default,){
final _that = this;
switch (_that) {
case _GiftsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GiftsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GiftsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'preview_url')  String previewUrl, @JsonKey(name: 'original_url')  String originalUrl,  String username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GiftsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'preview_url')  String previewUrl, @JsonKey(name: 'original_url')  String originalUrl,  String username)  $default,) {final _that = this;
switch (_that) {
case _GiftsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title, @JsonKey(name: 'preview_url')  String previewUrl, @JsonKey(name: 'original_url')  String originalUrl,  String username)?  $default,) {final _that = this;
switch (_that) {
case _GiftsModel() when $default != null:
return $default(_that.id,_that.title,_that.previewUrl,_that.originalUrl,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GiftsModel extends GiftsModel {
  const _GiftsModel({required this.id, required this.title, @JsonKey(name: 'preview_url') required this.previewUrl, @JsonKey(name: 'original_url') required this.originalUrl, required this.username}): super._();
  factory _GiftsModel.fromJson(Map<String, dynamic> json) => _$GiftsModelFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey(name: 'preview_url') final  String previewUrl;
@override@JsonKey(name: 'original_url') final  String originalUrl;
@override final  String username;

/// Create a copy of GiftsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GiftsModelCopyWith<_GiftsModel> get copyWith => __$GiftsModelCopyWithImpl<_GiftsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GiftsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GiftsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,previewUrl,originalUrl,username);

@override
String toString() {
  return 'GiftsModel(id: $id, title: $title, previewUrl: $previewUrl, originalUrl: $originalUrl, username: $username)';
}


}

/// @nodoc
abstract mixin class _$GiftsModelCopyWith<$Res> implements $GiftsModelCopyWith<$Res> {
  factory _$GiftsModelCopyWith(_GiftsModel value, $Res Function(_GiftsModel) _then) = __$GiftsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title,@JsonKey(name: 'preview_url') String previewUrl,@JsonKey(name: 'original_url') String originalUrl, String username
});




}
/// @nodoc
class __$GiftsModelCopyWithImpl<$Res>
    implements _$GiftsModelCopyWith<$Res> {
  __$GiftsModelCopyWithImpl(this._self, this._then);

  final _GiftsModel _self;
  final $Res Function(_GiftsModel) _then;

/// Create a copy of GiftsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? previewUrl = null,Object? originalUrl = null,Object? username = null,}) {
  return _then(_GiftsModel(
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
