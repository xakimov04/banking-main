import 'package:banking/data/models/card_model.dart';
import 'package:banking/data/repositories/card_repository.dart';
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_event.dart';
part 'card_state.dart';
part 'card_bloc.freezed.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardRepository cardRepository;

  CardBloc({required this.cardRepository}) : super(const _CardInitialState()) {
    on<_GetCards>(_onGetCards);
    on<_AddCard>(_onAddCard);
    on<_DeleteCard>(_onDeleteCard);
    on<_SendMoney>(_onSendMoney);
  }

  _onGetCards(_GetCards event, Emitter<CardState> emit) async {
    emit(_CardLoadingState());
    try {
      final cards = await cardRepository.getCards();

      emit(_CardLoadedState(cards));
    } catch (e) {
      emit(_CardErrorState("Error on get:  $e"));
    }
  }

  _onAddCard(_AddCard event, Emitter<CardState> emit) async {
    emit(_CardLoadingState());
    try {
      await cardRepository.addCard(event.card);
      final cards = await cardRepository.getCards();

      emit(_CardLoadedState(cards));
    } catch (e) {
      emit(_CardErrorState(e.toString()));
    }
  }

  _onDeleteCard(_DeleteCard event, Emitter<CardState> emit) async {
    emit(_CardLoadingState());
    try {
      await cardRepository.deleeteCard(event.id);
      final cards = await cardRepository.getCards();

      emit(_CardLoadedState(cards));
    } catch (e) {
      emit(_CardErrorState(e.toString()));
    }
  }

  _onSendMoney(_SendMoney event, emit) async {
    emit(_CardLoadingState());

    try {
      await cardRepository.sendMoney(
          event.fromCardID, event.toCardId, event.amount);

      final cards = await cardRepository.getCards();
      emit(_CardLoadedState(cards));
    } catch (e) {
      emit(_CardErrorState(e.toString()));
    }
  }
}
