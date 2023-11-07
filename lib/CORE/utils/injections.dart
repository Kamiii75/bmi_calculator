import 'package:bmi_calculator/CORE/blocs/bloc_export.dart';
import 'package:get_it/get_it.dart';

import 'enum.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Blocs
  sl.registerLazySingleton<BmiBloc>(() => BmiBloc());

  //! Bloc States
  sl.registerLazySingleton<BmiState>(
    () => const BmiState(
      selectedMale: true,
      numbers: 180,
      counterWeight: 60,
      ageCounter: 15,
    ),
  );
}
