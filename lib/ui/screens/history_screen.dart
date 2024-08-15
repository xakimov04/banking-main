import 'package:banking/logic/bloc/card/card_bloc.dart';
import 'package:banking/logic/bloc/history/history_bloc.dart';
import 'package:banking/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<HistoryBloc, HistoryState>(
              bloc: context.read<HistoryBloc>()
                ..add(const HistoryEvent.getHistory()),
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (list) => ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final data = list[index];
                      return ColoredBox(
                        color: Colors.teal.shade200,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: "from: " + data['from']),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomText(text: 'to: ' + data['to']),
                              ],
                            ),
                            CustomText(
                              text: "${data['amount']} UZS",
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  error: (error) => Center(
                    child: Text(error),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
