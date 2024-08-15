import 'package:banking/data/models/card_model.dart';
import 'package:banking/data/services/card_dio_service.dart';

class CardRepository {
  CardDioService cardDioService;

  CardRepository({required this.cardDioService});

  Future<List<CardModel>> getCards() async {
    return await cardDioService.getCards();
  }

  Future<void> addCard(CardModel card) async {
    await cardDioService.addCard(card);
  }

  Future<void> deleeteCard(String id) async {
    await cardDioService.deleteCard(id);
  }

  Future<void> sendMoney(
      String fromCardId, String toCardId, double amount) async {
    print("repoga keldi");
    await cardDioService.sendMoney(fromCardId, toCardId, amount);
  }

  Future<List<Map<String, dynamic>>> getTransactions() async {
    return await cardDioService.getTransactions();
  }
}
