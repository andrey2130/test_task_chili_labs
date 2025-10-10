part of 'gifs_bloc.dart';

@freezed
sealed class GifsEvent with _$GifsEvent {
  const factory GifsEvent.searchGifs(SearchGifsParams params) = SearchGifsEvent;
  const factory GifsEvent.loadMoreGifs() = LoadMoreGifsEvent;
  const factory GifsEvent.clearGifs() = ClearGifsEvent;
}
