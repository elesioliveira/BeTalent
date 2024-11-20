import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class AppNotificationWidget extends StatelessWidget {
  const AppNotificationWidget({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Badge(
      largeSize: 7,
      alignment: const Alignment(-0.0, -1),
      backgroundColor: AppColors.bluePrimary,
      label: Container(
        width: 15,
        height: 24,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.bluePrimary,
        ),
        child: Center(
          child: Text(
            data,
            softWrap: false,
            style: const TextStyle(fontSize: 10),
          ),
        ),
      ),
      child: const Icon(
        CupertinoIcons.bell,
        size: 30,
      ),
    );
  }
}
