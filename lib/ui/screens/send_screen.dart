import 'package:banking/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/card/card_bloc.dart';
import '../widgets/custom_text.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  bool isActive = false;
  bool isActive2 = false;
  String fromid = '';
  String toid = '';

  final TextEditingController senderCardController = TextEditingController();
  final TextEditingController receiverCardController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  void dispose() {
    senderCardController.dispose();
    receiverCardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: senderCardController,
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
            },
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "From",
              border: OutlineInputBorder(),
              hintText: 'Select a card',
            ),
          ),
          const SizedBox(height: 16.0),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: isActive ? 100 : 0,
            color: Colors.teal.shade100,
            child: BlocBuilder<CardBloc, CardState>(
              bloc: getIt.get<CardBloc>()..add(CardEvent.getCards()),
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (message) => Center(child: Text(message)),
                  loaded: (cards) => ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];
                      return ListTile(
                        title: CustomText(
                          text: card.number,
                          height: 1,
                        ),
                        onTap: () {
                          senderCardController.text = card.number;
                          fromid = card.id!;
                          setState(() {
                            isActive = false;
                          });
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: receiverCardController,
            onTap: () {
              setState(() {
                isActive2 = !isActive2;
              });
            },
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "To",
              border: OutlineInputBorder(),
              hintText: 'Select a card',
            ),
          ),
          const SizedBox(height: 16.0),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: isActive2 ? 100 : 0,
            color: Colors.teal.shade100,
            child: BlocBuilder<CardBloc, CardState>(
              bloc: getIt.get<CardBloc>()..add(CardEvent.getCards()),
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (message) => Center(child: Text(message)),
                  loaded: (cards) => ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];

                      return ListTile(
                        title: CustomText(
                          text: card.number,
                          height: 1,
                        ),
                        onTap: () {
                          toid = card.id!;
                          receiverCardController.text = card.number;
                          setState(() {
                            isActive2 = false;
                          });
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Amount",
              border: OutlineInputBorder(),
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              getIt.get<CardBloc>().add(CardEvent.sendMoney(
                  fromid, toid, double.parse(amountController.text)));
              senderCardController.clear();
              receiverCardController.clear();
              amountController.clear();
              setState(() {});
            },
            child: const Text("Send"),
          )
        ],
      ),
    );
  }
}
