part of 'gifts_bloc.dart';

@freezed
sealed class GiftsEvent with _$GiftsEvent {
  const factory GiftsEvent.searchGifs(SearchGifsParams params) =
      SearchGifsEvent;
  const factory GiftsEvent.loadMoreGifs() = LoadMoreGiftsEvent;
  const factory GiftsEvent.clearGifs() = ClearGiftsEvent;
}
