import 'package:banking/data/models/card_model.dart';
import 'package:dio/dio.dart';

class CardDioService {
  final dio = Dio()
    ..options = BaseOptions(
        baseUrl: "https://lesson66-e0c3e-default-rtdb.firebaseio.com");

  Future<List<CardModel>> getCards() async {
    try {
      final response = await dio.get('/cards.json');

      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      List<CardModel> cards = data.entries.map((entry) {
        var data = entry.value as Map<String, dynamic>;

        data['id'] = entry.key;
        return CardModel.fromJson(data);
      }).toList();

      return cards;
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      rethrow;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> getTransactions() async {
    try {
      final response = await dio.get('/history.json');

      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      List<Map<String, dynamic>> cards = data.entries.map((entry) {
        var data = entry.value as Map<String, dynamic>;

        data['id'] = entry.key;
        return data;
      }).toList();

      return cards;
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      rethrow;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<void> addCard(CardModel card) async {
    try {
      final response = await dio.post('/cards.json', data: card.toJson());
      print(response.data);
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      rethrow;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<void> sendMoney(String fromCardId, String toCardId, amount) async {
    try {
      print(fromCardId);
      print(toCardId);

      final from = await dio.get("/cards/$fromCardId.json");
      final toCard = await dio.get("/cards/$toCardId.json");

      double fromBalance = from.data['balance'];
      double toBalance = toCard.data['balance'];
      print(fromBalance);
      print(toBalance);
      if (fromBalance < amount) {
        throw Exception("Insufficent funds");
      }

      await dio.post("/history.json", data: {
        "from": from.data['number'],
        "to": toCard.data['number'],
        "amount": amount
      });
      fromBalance -= amount;
      toBalance += amount;

      await dio
          .patch('/cards/$fromCardId.json', data: {"balance": fromBalance});
      await dio.patch('/cards/$toCardId.json', data: {"balance": toBalance});
    } on DioException catch (e) {
      print("dio exception : $e");

      rethrow;
    } catch (e) {
      print("Error : $e");

      rethrow;
    }
  }

  Future<void> deleteCard(String id) async {
    try {
      final response = await dio.delete('/cards/$id.json');
      print(response.data);
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      rethrow;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}
