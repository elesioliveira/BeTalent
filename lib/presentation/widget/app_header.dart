import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_gaps.dart';
import '../../core/utils/app_typography.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppGaps.appGapH16,
        Text('Foto', style: heading2(fontSize: 18)),
        AppGaps.appGapH16,
        Text('Nome', style: heading2(fontSize: 18)),
        const Expanded(child: SizedBox()),
        CircleAvatar(
          backgroundColor: AppColors.black,
          radius: 6,
        ),
        AppGaps.appGapH32,
      ],
    );
  }
}
