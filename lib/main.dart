import 'package:flutter/material.dart';
import 'package:location_api_app/core/routes/magic_router.dart';
import 'package:location_api_app/features/splash/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
