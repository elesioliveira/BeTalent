import 'package:be_talent/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.bluePrimary),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
