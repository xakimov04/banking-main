import 'package:banking/data/repositories/card_repository.dart';
import 'package:banking/logic/bloc/card/card_bloc.dart';
import 'package:banking/logic/bloc/history/history_bloc.dart';
import 'package:banking/ui/screens/main_screen.dart';
import 'package:banking/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: getIt.get<CardRepository>()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: getIt.get<CardBloc>()),
          BlocProvider.value(value: getIt.get<HistoryBloc>()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
        ),
      ),
    );
  }
}
