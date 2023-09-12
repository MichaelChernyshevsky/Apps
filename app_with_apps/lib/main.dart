import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(
    MultiBlocProvider(
      providers: const  [
        // BlocProvider<DataBloc>(create: (context) => DataBloc(true)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Some",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
