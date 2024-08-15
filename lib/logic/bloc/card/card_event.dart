part of 'card_bloc.dart';

@freezed
class CardEvent with _$CardEvent {
  factory CardEvent.getCards() = _GetCards;
  factory CardEvent.addCard(CardModel card) = _AddCard;
  factory CardEvent.deleteCard(String id) = _DeleteCard;
  factory CardEvent.sendMoney(String fromCardID, String toCardId, double amount) = _SendMoney;
}
