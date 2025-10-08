// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure()';
}


}

/// @nodoc
class $NetworkFailureCopyWith<$Res>  {
$NetworkFailureCopyWith(NetworkFailure _, $Res Function(NetworkFailure) __);
}


/// Adds pattern-matching-related methods to [NetworkFailure].
extension NetworkFailurePatterns on NetworkFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoInternetFailure value)?  noInternet,TResult Function( ServerErrorFailure value)?  serverError,TResult Function( TimeoutFailure value)?  timeout,TResult Function( UnknownFailure value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoInternetFailure() when noInternet != null:
return noInternet(_that);case ServerErrorFailure() when serverError != null:
return serverError(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoInternetFailure value)  noInternet,required TResult Function( ServerErrorFailure value)  serverError,required TResult Function( TimeoutFailure value)  timeout,required TResult Function( UnknownFailure value)  unknown,}){
final _that = this;
switch (_that) {
case NoInternetFailure():
return noInternet(_that);case ServerErrorFailure():
return serverError(_that);case TimeoutFailure():
return timeout(_that);case UnknownFailure():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoInternetFailure value)?  noInternet,TResult? Function( ServerErrorFailure value)?  serverError,TResult? Function( TimeoutFailure value)?  timeout,TResult? Function( UnknownFailure value)?  unknown,}){
final _that = this;
switch (_that) {
case NoInternetFailure() when noInternet != null:
return noInternet(_that);case ServerErrorFailure() when serverError != null:
return serverError(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noInternet,TResult Function( String message)?  serverError,TResult Function()?  timeout,TResult Function( String message)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoInternetFailure() when noInternet != null:
return noInternet();case ServerErrorFailure() when serverError != null:
return serverError(_that.message);case TimeoutFailure() when timeout != null:
return timeout();case UnknownFailure() when unknown != null:
return unknown(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noInternet,required TResult Function( String message)  serverError,required TResult Function()  timeout,required TResult Function( String message)  unknown,}) {final _that = this;
switch (_that) {
case NoInternetFailure():
return noInternet();case ServerErrorFailure():
return serverError(_that.message);case TimeoutFailure():
return timeout();case UnknownFailure():
return unknown(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noInternet,TResult? Function( String message)?  serverError,TResult? Function()?  timeout,TResult? Function( String message)?  unknown,}) {final _that = this;
switch (_that) {
case NoInternetFailure() when noInternet != null:
return noInternet();case ServerErrorFailure() when serverError != null:
return serverError(_that.message);case TimeoutFailure() when timeout != null:
return timeout();case UnknownFailure() when unknown != null:
return unknown(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NoInternetFailure implements NetworkFailure {
  const NoInternetFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure.noInternet()';
}


}




/// @nodoc


class ServerErrorFailure implements NetworkFailure {
  const ServerErrorFailure(this.message);
  

 final  String message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorFailureCopyWith<ServerErrorFailure> get copyWith => _$ServerErrorFailureCopyWithImpl<ServerErrorFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerErrorFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerErrorFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $ServerErrorFailureCopyWith(ServerErrorFailure value, $Res Function(ServerErrorFailure) _then) = _$ServerErrorFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerErrorFailureCopyWithImpl<$Res>
    implements $ServerErrorFailureCopyWith<$Res> {
  _$ServerErrorFailureCopyWithImpl(this._self, this._then);

  final ServerErrorFailure _self;
  final $Res Function(ServerErrorFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerErrorFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimeoutFailure implements NetworkFailure {
  const TimeoutFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure.timeout()';
}


}




/// @nodoc


class UnknownFailure implements NetworkFailure {
  const UnknownFailure(this.message);
  

 final  String message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UnknownFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
