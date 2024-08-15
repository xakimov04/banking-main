import 'package:banking/data/repositories/card_repository.dart';
import 'package:banking/data/services/card_dio_service.dart';
import 'package:banking/logic/bloc/card/card_bloc.dart';
import 'package:banking/logic/bloc/history/history_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(
    () => CardDioService(),
  );
  getIt.registerLazySingleton(
    () => CardRepository(cardDioService: getIt.get<CardDioService>()),
  );
  getIt.registerLazySingleton(
    () => CardBloc(cardRepository: getIt.get<CardRepository>()),
  );
  getIt.registerSingleton(HistoryBloc());
}
