part of 'gifts_bloc.dart';

@freezed
sealed class GiftsState with _$GiftsState {
  const factory GiftsState.initial() = GiftsInitial;
  const factory GiftsState.loading() = GiftsLoading;
  const factory GiftsState.loaded(List<GiftsEntity> gifts) = GiftsLoaded;
  const factory GiftsState.loadingMore(List<GiftsEntity> gifts) =
      GiftsLoadingMore;
  const factory GiftsState.error(NetworkFailure failure) = GiftsError;
}
