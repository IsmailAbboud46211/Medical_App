import 'package:doctors_app/app_wrapper.dart';
import 'package:doctors_app/core/router/app_router.dart';
import 'package:doctors_app/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* Router
  AppRouter appRouter = AppRouter();

  runApp(
    DoctorsApp(
      appRouter: appRouter,
    ),
  );
}

class DoctorsApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorsApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctors App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGeneratedRoutes,
      theme: LightTheme.setLightMode(),
      home: const AppWrapper(),
    );
  }
}
