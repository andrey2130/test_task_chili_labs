part of 'gifs_bloc.dart';

@freezed
sealed class GifsState with _$GifsState {
  const factory GifsState.initial() = GifsInitial;
  const factory GifsState.loading() = GifsLoading;
  const factory GifsState.loaded(List<GifsEntity> gifs) = GifsLoaded;
  const factory GifsState.loadingMore(List<GifsEntity> gifs) =
      GifsLoadingMore;
  const factory GifsState.error(NetworkFailure failure) = GifsError;
}
