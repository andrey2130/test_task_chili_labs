// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GifsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsEvent()';
}


}

/// @nodoc
class $GifsEventCopyWith<$Res>  {
$GifsEventCopyWith(GifsEvent _, $Res Function(GifsEvent) __);
}


/// Adds pattern-matching-related methods to [GifsEvent].
extension GifsEventPatterns on GifsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchGifsEvent value)?  searchGifs,TResult Function( LoadMoreGifsEvent value)?  loadMoreGifs,TResult Function( ClearGifsEvent value)?  clearGifs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that);case LoadMoreGifsEvent() when loadMoreGifs != null:
return loadMoreGifs(_that);case ClearGifsEvent() when clearGifs != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchGifsEvent value)  searchGifs,required TResult Function( LoadMoreGifsEvent value)  loadMoreGifs,required TResult Function( ClearGifsEvent value)  clearGifs,}){
final _that = this;
switch (_that) {
case SearchGifsEvent():
return searchGifs(_that);case LoadMoreGifsEvent():
return loadMoreGifs(_that);case ClearGifsEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchGifsEvent value)?  searchGifs,TResult? Function( LoadMoreGifsEvent value)?  loadMoreGifs,TResult? Function( ClearGifsEvent value)?  clearGifs,}){
final _that = this;
switch (_that) {
case SearchGifsEvent() when searchGifs != null:
return searchGifs(_that);case LoadMoreGifsEvent() when loadMoreGifs != null:
return loadMoreGifs(_that);case ClearGifsEvent() when clearGifs != null:
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
return searchGifs(_that.params);case LoadMoreGifsEvent() when loadMoreGifs != null:
return loadMoreGifs();case ClearGifsEvent() when clearGifs != null:
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
return searchGifs(_that.params);case LoadMoreGifsEvent():
return loadMoreGifs();case ClearGifsEvent():
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
return searchGifs(_that.params);case LoadMoreGifsEvent() when loadMoreGifs != null:
return loadMoreGifs();case ClearGifsEvent() when clearGifs != null:
return clearGifs();case _:
  return null;

}
}

}

/// @nodoc


class SearchGifsEvent implements GifsEvent {
  const SearchGifsEvent(this.params);
  

 final  SearchGifsParams params;

/// Create a copy of GifsEvent
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
  return 'GifsEvent.searchGifs(params: $params)';
}


}

/// @nodoc
abstract mixin class $SearchGifsEventCopyWith<$Res> implements $GifsEventCopyWith<$Res> {
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

/// Create a copy of GifsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(SearchGifsEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SearchGifsParams,
  ));
}

/// Create a copy of GifsEvent
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


class LoadMoreGifsEvent implements GifsEvent {
  const LoadMoreGifsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreGifsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsEvent.loadMoreGifs()';
}


}




/// @nodoc


class ClearGifsEvent implements GifsEvent {
  const ClearGifsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearGifsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsEvent.clearGifs()';
}


}




/// @nodoc
mixin _$GifsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsState()';
}


}

/// @nodoc
class $GifsStateCopyWith<$Res>  {
$GifsStateCopyWith(GifsState _, $Res Function(GifsState) __);
}


/// Adds pattern-matching-related methods to [GifsState].
extension GifsStatePatterns on GifsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GifsInitial value)?  initial,TResult Function( GifsLoading value)?  loading,TResult Function( GifsLoaded value)?  loaded,TResult Function( GifsLoadingMore value)?  loadingMore,TResult Function( GifsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GifsInitial() when initial != null:
return initial(_that);case GifsLoading() when loading != null:
return loading(_that);case GifsLoaded() when loaded != null:
return loaded(_that);case GifsLoadingMore() when loadingMore != null:
return loadingMore(_that);case GifsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GifsInitial value)  initial,required TResult Function( GifsLoading value)  loading,required TResult Function( GifsLoaded value)  loaded,required TResult Function( GifsLoadingMore value)  loadingMore,required TResult Function( GifsError value)  error,}){
final _that = this;
switch (_that) {
case GifsInitial():
return initial(_that);case GifsLoading():
return loading(_that);case GifsLoaded():
return loaded(_that);case GifsLoadingMore():
return loadingMore(_that);case GifsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GifsInitial value)?  initial,TResult? Function( GifsLoading value)?  loading,TResult? Function( GifsLoaded value)?  loaded,TResult? Function( GifsLoadingMore value)?  loadingMore,TResult? Function( GifsError value)?  error,}){
final _that = this;
switch (_that) {
case GifsInitial() when initial != null:
return initial(_that);case GifsLoading() when loading != null:
return loading(_that);case GifsLoaded() when loaded != null:
return loaded(_that);case GifsLoadingMore() when loadingMore != null:
return loadingMore(_that);case GifsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<GifsEntity> gifs)?  loaded,TResult Function( List<GifsEntity> gifs)?  loadingMore,TResult Function( NetworkFailure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GifsInitial() when initial != null:
return initial();case GifsLoading() when loading != null:
return loading();case GifsLoaded() when loaded != null:
return loaded(_that.gifs);case GifsLoadingMore() when loadingMore != null:
return loadingMore(_that.gifs);case GifsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<GifsEntity> gifs)  loaded,required TResult Function( List<GifsEntity> gifs)  loadingMore,required TResult Function( NetworkFailure failure)  error,}) {final _that = this;
switch (_that) {
case GifsInitial():
return initial();case GifsLoading():
return loading();case GifsLoaded():
return loaded(_that.gifs);case GifsLoadingMore():
return loadingMore(_that.gifs);case GifsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<GifsEntity> gifs)?  loaded,TResult? Function( List<GifsEntity> gifs)?  loadingMore,TResult? Function( NetworkFailure failure)?  error,}) {final _that = this;
switch (_that) {
case GifsInitial() when initial != null:
return initial();case GifsLoading() when loading != null:
return loading();case GifsLoaded() when loaded != null:
return loaded(_that.gifs);case GifsLoadingMore() when loadingMore != null:
return loadingMore(_that.gifs);case GifsError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class GifsInitial implements GifsState {
  const GifsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsState.initial()';
}


}




/// @nodoc


class GifsLoading implements GifsState {
  const GifsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GifsState.loading()';
}


}




/// @nodoc


class GifsLoaded implements GifsState {
  const GifsLoaded(final  List<GifsEntity> gifs): _gifs = gifs;
  

 final  List<GifsEntity> _gifs;
 List<GifsEntity> get gifs {
  if (_gifs is EqualUnmodifiableListView) return _gifs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gifs);
}


/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GifsLoadedCopyWith<GifsLoaded> get copyWith => _$GifsLoadedCopyWithImpl<GifsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsLoaded&&const DeepCollectionEquality().equals(other._gifs, _gifs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gifs));

@override
String toString() {
  return 'GifsState.loaded(gifs: $gifs)';
}


}

/// @nodoc
abstract mixin class $GifsLoadedCopyWith<$Res> implements $GifsStateCopyWith<$Res> {
  factory $GifsLoadedCopyWith(GifsLoaded value, $Res Function(GifsLoaded) _then) = _$GifsLoadedCopyWithImpl;
@useResult
$Res call({
 List<GifsEntity> gifs
});




}
/// @nodoc
class _$GifsLoadedCopyWithImpl<$Res>
    implements $GifsLoadedCopyWith<$Res> {
  _$GifsLoadedCopyWithImpl(this._self, this._then);

  final GifsLoaded _self;
  final $Res Function(GifsLoaded) _then;

/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gifs = null,}) {
  return _then(GifsLoaded(
null == gifs ? _self._gifs : gifs // ignore: cast_nullable_to_non_nullable
as List<GifsEntity>,
  ));
}


}

/// @nodoc


class GifsLoadingMore implements GifsState {
  const GifsLoadingMore(final  List<GifsEntity> gifs): _gifs = gifs;
  

 final  List<GifsEntity> _gifs;
 List<GifsEntity> get gifs {
  if (_gifs is EqualUnmodifiableListView) return _gifs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gifs);
}


/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GifsLoadingMoreCopyWith<GifsLoadingMore> get copyWith => _$GifsLoadingMoreCopyWithImpl<GifsLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsLoadingMore&&const DeepCollectionEquality().equals(other._gifs, _gifs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gifs));

@override
String toString() {
  return 'GifsState.loadingMore(gifs: $gifs)';
}


}

/// @nodoc
abstract mixin class $GifsLoadingMoreCopyWith<$Res> implements $GifsStateCopyWith<$Res> {
  factory $GifsLoadingMoreCopyWith(GifsLoadingMore value, $Res Function(GifsLoadingMore) _then) = _$GifsLoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<GifsEntity> gifs
});




}
/// @nodoc
class _$GifsLoadingMoreCopyWithImpl<$Res>
    implements $GifsLoadingMoreCopyWith<$Res> {
  _$GifsLoadingMoreCopyWithImpl(this._self, this._then);

  final GifsLoadingMore _self;
  final $Res Function(GifsLoadingMore) _then;

/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gifs = null,}) {
  return _then(GifsLoadingMore(
null == gifs ? _self._gifs : gifs // ignore: cast_nullable_to_non_nullable
as List<GifsEntity>,
  ));
}


}

/// @nodoc


class GifsError implements GifsState {
  const GifsError(this.failure);
  

 final  NetworkFailure failure;

/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GifsErrorCopyWith<GifsError> get copyWith => _$GifsErrorCopyWithImpl<GifsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GifsError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'GifsState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GifsErrorCopyWith<$Res> implements $GifsStateCopyWith<$Res> {
  factory $GifsErrorCopyWith(GifsError value, $Res Function(GifsError) _then) = _$GifsErrorCopyWithImpl;
@useResult
$Res call({
 NetworkFailure failure
});


$NetworkFailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$GifsErrorCopyWithImpl<$Res>
    implements $GifsErrorCopyWith<$Res> {
  _$GifsErrorCopyWithImpl(this._self, this._then);

  final GifsError _self;
  final $Res Function(GifsError) _then;

/// Create a copy of GifsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(GifsError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as NetworkFailure,
  ));
}

/// Create a copy of GifsState
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
