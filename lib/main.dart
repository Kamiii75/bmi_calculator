import 'package:bmi_calculator/CORE/blocs/bloc_export.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'CORE/constants/const_colors.dart';
import 'CORE/utils/injections.dart' as di;
import 'UI/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory(),
  );
  await di.init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [

        BlocProvider(create: (context) => di.sl<BmiBloc>()),
      ],
      child: ResponsiveSizer(
          builder: (context, orientation, screenType)
      {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter BMI',
            theme: ThemeData.dark().copyWith(
              useMaterial3: true,
                primaryColor: ConstColors.kPrimaryColor,
                scaffoldBackgroundColor:ConstColors.kPrimaryColor
            ),
            // theme: ThemeData(
            //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //   useMaterial3: true,
            // ),
            home: const HomePage());
      }),
    );
  }
}
