import 'package:example_clean_architecture/data/data_source/remote_data_source/todos_data_source.dart';
import 'package:example_clean_architecture/data/repository_impl/repository_impl.dart';
import 'package:example_clean_architecture/domain/repository/repository.dart';
import 'package:example_clean_architecture/domain/usecase/usecase.dart';
import 'package:example_clean_architecture/presentation/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<TodosDataSource>(
    () => TodosDataSource(),
  );

  getIt.registerLazySingleton<Repository>(
    () => RepositoryImpl(dataSource: getIt()),
  );

  getIt.registerLazySingleton<Usecase>(
    () => Usecase(repository: getIt()),
  );

  getIt.registerFactory<TodoBloc>(
    () => TodoBloc(getIt()),
  );
}

