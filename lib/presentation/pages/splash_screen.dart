import 'package:be_talent/core/utils/app_colors.dart';
import 'package:be_talent/core/utils/app_typography.dart';
import 'package:be_talent/presentation/pages/employees_screen.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/navigation_with_duration.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigationToPage(context, page: const EmployeesScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluePrimary,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Be',
            style: heading1(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 38),
            children: [
              TextSpan(
                  text: 'T',
                  style: heading3(color: AppColors.white, fontSize: 32)),
              TextSpan(
                  text: 'alent',
                  style: heading3(color: AppColors.white, fontSize: 32)),
            ],
          ),
        ),
      ),
    );
  }
}
