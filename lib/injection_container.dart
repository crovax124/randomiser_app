import 'package:flutter/foundation.dart';
import 'package:randomiser_app/project_import/project_import.dart';

final getIt = GetIt.instance;
Future<void> injectContainer() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _registerAppConfigurations();
  await _registerBlocs();

  HydratedBloc.storage = getIt.get<Storage>();
}

Future<void> _registerAppConfigurations() async {
  //! Storage
  final blocStorage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  getIt
    ..registerSingleton<Storage>(blocStorage)
    ..registerSingleton<AppRouter>(
      AppRouter(),
    );
}

Future<void> _registerBlocs() async {
  // Blocs
  getIt.registerFactory<PatientBloc>(
    () => PatientBloc(),
  );
}
