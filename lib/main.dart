
import 'package:flutter/material.dart';
import 'package:intro_appp/res/constants.dart';
import 'package:intro_appp/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
        ),
        home: SplashView()
    );
  }
}


