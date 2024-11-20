import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_typography.dart';

class AppCircularShape extends StatelessWidget {
  const AppCircularShape({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.gray05,
      child: Center(
        child: Text(
          data,
          style: heading2(),
        ),
      ),
    );
  }
}
