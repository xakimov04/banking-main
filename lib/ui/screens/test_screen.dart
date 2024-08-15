import 'package:banking/data/models/card_model.dart';
import 'package:banking/data/services/card_dio_service.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void initState() {
    super.initState();
    getcard();
  }

  Future<void> getcard() async {
    await CardDioService().addCard(
      CardModel(
        fullName: 'fullName',
        number: 'number',
        expiryDate: 'expiryDate',
        balance: 4564540.55,
      ),
    );

    await CardDioService().getCards();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
