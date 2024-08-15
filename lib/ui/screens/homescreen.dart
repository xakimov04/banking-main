import 'package:banking/logic/bloc/card/card_bloc.dart';
import 'package:banking/ui/widgets/custom_card.dart';
import 'package:banking/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: BlocBuilder<CardBloc, CardState>(
            bloc: getIt.get<CardBloc>()..add(CardEvent.getCards()),
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (cards) => PageView.builder(
                  controller: PageController(viewportFraction: 0.9),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    final card = cards[index];
                    return CustomCard(
                      balance: card.balance.toString(),
                      cardnumber: card.number,
                      name: card.fullName,
                      expiryDate: card.expiryDate,
                    );
                  },
                ),
                error: (error) => Center(
                  child: Text(error),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
