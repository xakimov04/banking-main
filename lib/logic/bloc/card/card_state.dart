part of 'card_bloc.dart';

@freezed
class CardState with _$CardState {
  const factory CardState.initial() = _CardInitialState;
  factory CardState.loading() = _CardLoadingState;
  factory CardState.loaded(List<CardModel> cards) = _CardLoadedState;
  factory CardState.error(String error) = _CardErrorState;
}
