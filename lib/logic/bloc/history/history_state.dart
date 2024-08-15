part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loaded(List<Map<String, dynamic>> list) =
      _HistoryLoaded;
  const factory HistoryState.loading() = _HistoryLoading;
  const factory HistoryState.error(String error) = _HistoryError;
}
