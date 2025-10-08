// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GiftsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsEvent()';
}


}

/// @nodoc
class $GiftsEventCopyWith<$Res>  {
$GiftsEventCopyWith(GiftsEvent _, $Res Function(GiftsEvent) __);
}


/// Adds pattern-matching-related methods to [GiftsEvent].
extension GiftsEventPatterns on GiftsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchGifsEvent value)?  searchGifs,TResult Function( LoadMoreGiftsEvent value)?  loadMoreGifs,TResult Function( ClearGiftsEvent value)?  clearGifs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that);case LoadMoreGiftsEvent() when loadMoreGifs != null:
return loadMoreGifs(_that);case ClearGiftsEvent() when clearGifs != null:
return clearGifs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchGifsEvent value)  searchGifs,required TResult Function( LoadMoreGiftsEvent value)  loadMoreGifs,required TResult Function( ClearGiftsEvent value)  clearGifs,}){
final _that = this;
switch (_that) {
case SearchGifsEvent():
return searchGifs(_that);case LoadMoreGiftsEvent():
return loadMoreGifs(_that);case ClearGiftsEvent():
return clearGifs(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchGifsEvent value)?  searchGifs,TResult? Function( LoadMoreGiftsEvent value)?  loadMoreGifs,TResult? Function( ClearGiftsEvent value)?  clearGifs,}){
final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that);case LoadMoreGiftsEvent() when loadMoreGifs != null:
return loadMoreGifs(_that);case ClearGiftsEvent() when clearGifs != null:
return clearGifs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SearchGifsParams params)?  searchGifs,TResult Function()?  loadMoreGifs,TResult Function()?  clearGifs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that.params);case LoadMoreGiftsEvent() when loadMoreGifs != null:
return loadMoreGifs();case ClearGiftsEvent() when clearGifs != null:
return clearGifs();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SearchGifsParams params)  searchGifs,required TResult Function()  loadMoreGifs,required TResult Function()  clearGifs,}) {final _that = this;
switch (_that) {
case SearchGifsEvent():
return searchGifs(_that.params);case LoadMoreGiftsEvent():
return loadMoreGifs();case ClearGiftsEvent():
return clearGifs();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SearchGifsParams params)?  searchGifs,TResult? Function()?  loadMoreGifs,TResult? Function()?  clearGifs,}) {final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that.params);case LoadMoreGiftsEvent() when loadMoreGifs != null:
return loadMoreGifs();case ClearGiftsEvent() when clearGifs != null:
return clearGifs();case _:
  return null;

}
}

}

/// @nodoc


class SearchGifsEvent implements GiftsEvent {
  const SearchGifsEvent(this.params);
  

 final  SearchGifsParams params;

/// Create a copy of GiftsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchGifsEventCopyWith<SearchGifsEvent> get copyWith => _$SearchGifsEventCopyWithImpl<SearchGifsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchGifsEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'GiftsEvent.searchGifs(params: $params)';
}


}

/// @nodoc
abstract mixin class $SearchGifsEventCopyWith<$Res> implements $GiftsEventCopyWith<$Res> {
  factory $SearchGifsEventCopyWith(SearchGifsEvent value, $Res Function(SearchGifsEvent) _then) = _$SearchGifsEventCopyWithImpl;
@useResult
$Res call({
 SearchGifsParams params
});


$SearchGifsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SearchGifsEventCopyWithImpl<$Res>
    implements $SearchGifsEventCopyWith<$Res> {
  _$SearchGifsEventCopyWithImpl(this._self, this._then);

  final SearchGifsEvent _self;
  final $Res Function(SearchGifsEvent) _then;

/// Create a copy of GiftsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(SearchGifsEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SearchGifsParams,
  ));
}

/// Create a copy of GiftsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchGifsParamsCopyWith<$Res> get params {
  
  return $SearchGifsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class LoadMoreGiftsEvent implements GiftsEvent {
  const LoadMoreGiftsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreGiftsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsEvent.loadMoreGifs()';
}


}




/// @nodoc


class ClearGiftsEvent implements GiftsEvent {
  const ClearGiftsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearGiftsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsEvent.clearGifs()';
}


}




/// @nodoc
mixin _$GiftsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsState()';
}


}

/// @nodoc
class $GiftsStateCopyWith<$Res>  {
$GiftsStateCopyWith(GiftsState _, $Res Function(GiftsState) __);
}


/// Adds pattern-matching-related methods to [GiftsState].
extension GiftsStatePatterns on GiftsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GiftsInitial value)?  initial,TResult Function( GiftsLoading value)?  loading,TResult Function( GiftsLoaded value)?  loaded,TResult Function( GiftsLoadingMore value)?  loadingMore,TResult Function( GiftsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GiftsInitial() when initial != null:
return initial(_that);case GiftsLoading() when loading != null:
return loading(_that);case GiftsLoaded() when loaded != null:
return loaded(_that);case GiftsLoadingMore() when loadingMore != null:
return loadingMore(_that);case GiftsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GiftsInitial value)  initial,required TResult Function( GiftsLoading value)  loading,required TResult Function( GiftsLoaded value)  loaded,required TResult Function( GiftsLoadingMore value)  loadingMore,required TResult Function( GiftsError value)  error,}){
final _that = this;
switch (_that) {
case GiftsInitial():
return initial(_that);case GiftsLoading():
return loading(_that);case GiftsLoaded():
return loaded(_that);case GiftsLoadingMore():
return loadingMore(_that);case GiftsError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GiftsInitial value)?  initial,TResult? Function( GiftsLoading value)?  loading,TResult? Function( GiftsLoaded value)?  loaded,TResult? Function( GiftsLoadingMore value)?  loadingMore,TResult? Function( GiftsError value)?  error,}){
final _that = this;
switch (_that) {
case GiftsInitial() when initial != null:
return initial(_that);case GiftsLoading() when loading != null:
return loading(_that);case GiftsLoaded() when loaded != null:
return loaded(_that);case GiftsLoadingMore() when loadingMore != null:
return loadingMore(_that);case GiftsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<GiftsEntity> gifts)?  loaded,TResult Function( List<GiftsEntity> gifts)?  loadingMore,TResult Function( NetworkFailure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GiftsInitial() when initial != null:
return initial();case GiftsLoading() when loading != null:
return loading();case GiftsLoaded() when loaded != null:
return loaded(_that.gifts);case GiftsLoadingMore() when loadingMore != null:
return loadingMore(_that.gifts);case GiftsError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<GiftsEntity> gifts)  loaded,required TResult Function( List<GiftsEntity> gifts)  loadingMore,required TResult Function( NetworkFailure failure)  error,}) {final _that = this;
switch (_that) {
case GiftsInitial():
return initial();case GiftsLoading():
return loading();case GiftsLoaded():
return loaded(_that.gifts);case GiftsLoadingMore():
return loadingMore(_that.gifts);case GiftsError():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<GiftsEntity> gifts)?  loaded,TResult? Function( List<GiftsEntity> gifts)?  loadingMore,TResult? Function( NetworkFailure failure)?  error,}) {final _that = this;
switch (_that) {
case GiftsInitial() when initial != null:
return initial();case GiftsLoading() when loading != null:
return loading();case GiftsLoaded() when loaded != null:
return loaded(_that.gifts);case GiftsLoadingMore() when loadingMore != null:
return loadingMore(_that.gifts);case GiftsError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class GiftsInitial implements GiftsState {
  const GiftsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsState.initial()';
}


}




/// @nodoc


class GiftsLoading implements GiftsState {
  const GiftsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftsState.loading()';
}


}




/// @nodoc


class GiftsLoaded implements GiftsState {
  const GiftsLoaded(final  List<GiftsEntity> gifts): _gifts = gifts;
  

 final  List<GiftsEntity> _gifts;
 List<GiftsEntity> get gifts {
  if (_gifts is EqualUnmodifiableListView) return _gifts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gifts);
}


/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftsLoadedCopyWith<GiftsLoaded> get copyWith => _$GiftsLoadedCopyWithImpl<GiftsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsLoaded&&const DeepCollectionEquality().equals(other._gifts, _gifts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gifts));

@override
String toString() {
  return 'GiftsState.loaded(gifts: $gifts)';
}


}

/// @nodoc
abstract mixin class $GiftsLoadedCopyWith<$Res> implements $GiftsStateCopyWith<$Res> {
  factory $GiftsLoadedCopyWith(GiftsLoaded value, $Res Function(GiftsLoaded) _then) = _$GiftsLoadedCopyWithImpl;
@useResult
$Res call({
 List<GiftsEntity> gifts
});




}
/// @nodoc
class _$GiftsLoadedCopyWithImpl<$Res>
    implements $GiftsLoadedCopyWith<$Res> {
  _$GiftsLoadedCopyWithImpl(this._self, this._then);

  final GiftsLoaded _self;
  final $Res Function(GiftsLoaded) _then;

/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gifts = null,}) {
  return _then(GiftsLoaded(
null == gifts ? _self._gifts : gifts // ignore: cast_nullable_to_non_nullable
as List<GiftsEntity>,
  ));
}


}

/// @nodoc


class GiftsLoadingMore implements GiftsState {
  const GiftsLoadingMore(final  List<GiftsEntity> gifts): _gifts = gifts;
  

 final  List<GiftsEntity> _gifts;
 List<GiftsEntity> get gifts {
  if (_gifts is EqualUnmodifiableListView) return _gifts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gifts);
}


/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftsLoadingMoreCopyWith<GiftsLoadingMore> get copyWith => _$GiftsLoadingMoreCopyWithImpl<GiftsLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsLoadingMore&&const DeepCollectionEquality().equals(other._gifts, _gifts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gifts));

@override
String toString() {
  return 'GiftsState.loadingMore(gifts: $gifts)';
}


}

/// @nodoc
abstract mixin class $GiftsLoadingMoreCopyWith<$Res> implements $GiftsStateCopyWith<$Res> {
  factory $GiftsLoadingMoreCopyWith(GiftsLoadingMore value, $Res Function(GiftsLoadingMore) _then) = _$GiftsLoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<GiftsEntity> gifts
});




}
/// @nodoc
class _$GiftsLoadingMoreCopyWithImpl<$Res>
    implements $GiftsLoadingMoreCopyWith<$Res> {
  _$GiftsLoadingMoreCopyWithImpl(this._self, this._then);

  final GiftsLoadingMore _self;
  final $Res Function(GiftsLoadingMore) _then;

/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gifts = null,}) {
  return _then(GiftsLoadingMore(
null == gifts ? _self._gifts : gifts // ignore: cast_nullable_to_non_nullable
as List<GiftsEntity>,
  ));
}


}

/// @nodoc


class GiftsError implements GiftsState {
  const GiftsError(this.failure);
  

 final  NetworkFailure failure;

/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftsErrorCopyWith<GiftsError> get copyWith => _$GiftsErrorCopyWithImpl<GiftsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftsError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'GiftsState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GiftsErrorCopyWith<$Res> implements $GiftsStateCopyWith<$Res> {
  factory $GiftsErrorCopyWith(GiftsError value, $Res Function(GiftsError) _then) = _$GiftsErrorCopyWithImpl;
@useResult
$Res call({
 NetworkFailure failure
});


$NetworkFailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$GiftsErrorCopyWithImpl<$Res>
    implements $GiftsErrorCopyWith<$Res> {
  _$GiftsErrorCopyWithImpl(this._self, this._then);

  final GiftsError _self;
  final $Res Function(GiftsError) _then;

/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(GiftsError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as NetworkFailure,
  ));
}

/// Create a copy of GiftsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<$Res> get failure {
  
  return $NetworkFailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
