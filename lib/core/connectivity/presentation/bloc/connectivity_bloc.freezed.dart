// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityEvent()';
}


}

/// @nodoc
class $ConnectivityEventCopyWith<$Res>  {
$ConnectivityEventCopyWith(ConnectivityEvent _, $Res Function(ConnectivityEvent) __);
}


/// Adds pattern-matching-related methods to [ConnectivityEvent].
extension ConnectivityEventPatterns on ConnectivityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ConnectivityStarted value)?  started,TResult Function( ConnectivityStatusChanged value)?  statusChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ConnectivityStarted() when started != null:
return started(_that);case ConnectivityStatusChanged() when statusChanged != null:
return statusChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ConnectivityStarted value)  started,required TResult Function( ConnectivityStatusChanged value)  statusChanged,}){
final _that = this;
switch (_that) {
case ConnectivityStarted():
return started(_that);case ConnectivityStatusChanged():
return statusChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ConnectivityStarted value)?  started,TResult? Function( ConnectivityStatusChanged value)?  statusChanged,}){
final _that = this;
switch (_that) {
case ConnectivityStarted() when started != null:
return started(_that);case ConnectivityStatusChanged() when statusChanged != null:
return statusChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( bool isOnline)?  statusChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ConnectivityStarted() when started != null:
return started();case ConnectivityStatusChanged() when statusChanged != null:
return statusChanged(_that.isOnline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( bool isOnline)  statusChanged,}) {final _that = this;
switch (_that) {
case ConnectivityStarted():
return started();case ConnectivityStatusChanged():
return statusChanged(_that.isOnline);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( bool isOnline)?  statusChanged,}) {final _that = this;
switch (_that) {
case ConnectivityStarted() when started != null:
return started();case ConnectivityStatusChanged() when statusChanged != null:
return statusChanged(_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc


class ConnectivityStarted implements ConnectivityEvent {
  const ConnectivityStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityEvent.started()';
}


}




/// @nodoc


class ConnectivityStatusChanged implements ConnectivityEvent {
  const ConnectivityStatusChanged(this.isOnline);
  

 final  bool isOnline;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityStatusChangedCopyWith<ConnectivityStatusChanged> get copyWith => _$ConnectivityStatusChangedCopyWithImpl<ConnectivityStatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityStatusChanged&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode => Object.hash(runtimeType,isOnline);

@override
String toString() {
  return 'ConnectivityEvent.statusChanged(isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $ConnectivityStatusChangedCopyWith<$Res> implements $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityStatusChangedCopyWith(ConnectivityStatusChanged value, $Res Function(ConnectivityStatusChanged) _then) = _$ConnectivityStatusChangedCopyWithImpl;
@useResult
$Res call({
 bool isOnline
});




}
/// @nodoc
class _$ConnectivityStatusChangedCopyWithImpl<$Res>
    implements $ConnectivityStatusChangedCopyWith<$Res> {
  _$ConnectivityStatusChangedCopyWithImpl(this._self, this._then);

  final ConnectivityStatusChanged _self;
  final $Res Function(ConnectivityStatusChanged) _then;

/// Create a copy of ConnectivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isOnline = null,}) {
  return _then(ConnectivityStatusChanged(
null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ConnectivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState()';
}


}

/// @nodoc
class $ConnectivityStateCopyWith<$Res>  {
$ConnectivityStateCopyWith(ConnectivityState _, $Res Function(ConnectivityState) __);
}


/// Adds pattern-matching-related methods to [ConnectivityState].
extension ConnectivityStatePatterns on ConnectivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ConnectivityInitial value)?  initial,TResult Function( ConnectivityOnline value)?  online,TResult Function( ConnectivityOffline value)?  offline,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ConnectivityInitial() when initial != null:
return initial(_that);case ConnectivityOnline() when online != null:
return online(_that);case ConnectivityOffline() when offline != null:
return offline(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ConnectivityInitial value)  initial,required TResult Function( ConnectivityOnline value)  online,required TResult Function( ConnectivityOffline value)  offline,}){
final _that = this;
switch (_that) {
case ConnectivityInitial():
return initial(_that);case ConnectivityOnline():
return online(_that);case ConnectivityOffline():
return offline(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ConnectivityInitial value)?  initial,TResult? Function( ConnectivityOnline value)?  online,TResult? Function( ConnectivityOffline value)?  offline,}){
final _that = this;
switch (_that) {
case ConnectivityInitial() when initial != null:
return initial(_that);case ConnectivityOnline() when online != null:
return online(_that);case ConnectivityOffline() when offline != null:
return offline(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  online,TResult Function()?  offline,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ConnectivityInitial() when initial != null:
return initial();case ConnectivityOnline() when online != null:
return online();case ConnectivityOffline() when offline != null:
return offline();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  online,required TResult Function()  offline,}) {final _that = this;
switch (_that) {
case ConnectivityInitial():
return initial();case ConnectivityOnline():
return online();case ConnectivityOffline():
return offline();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  online,TResult? Function()?  offline,}) {final _that = this;
switch (_that) {
case ConnectivityInitial() when initial != null:
return initial();case ConnectivityOnline() when online != null:
return online();case ConnectivityOffline() when offline != null:
return offline();case _:
  return null;

}
}

}

/// @nodoc


class ConnectivityInitial implements ConnectivityState {
  const ConnectivityInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.initial()';
}


}




/// @nodoc


class ConnectivityOnline implements ConnectivityState {
  const ConnectivityOnline();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityOnline);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.online()';
}


}




/// @nodoc


class ConnectivityOffline implements ConnectivityState {
  const ConnectivityOffline();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityOffline);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.offline()';
}


}




// dart format on
