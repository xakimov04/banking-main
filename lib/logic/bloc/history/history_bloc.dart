import 'package:banking/data/repositories/card_repository.dart';
import 'package:banking/data/services/card_dio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_event.dart';
part 'history_state.dart';

part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  CardRepository cardRepository =
      CardRepository(cardDioService: CardDioService());
  HistoryBloc() : super(_Initial()) {
    on<_GetHistory>(
      (event, emit) async {
        emit(_HistoryLoading());
        final history = await cardRepository.getTransactions();

        emit(_HistoryLoaded(history));
        try {} catch (e) {
          emit(_HistoryError(e.toString()));
        }
      },
    );
  }
}
