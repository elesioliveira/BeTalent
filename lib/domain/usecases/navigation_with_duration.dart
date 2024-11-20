// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../../core/utils/app_navigation.dart';

Future<void> navigationToPage(BuildContext context,
    {required Widget page}) async {
  await Future.delayed(
    const Duration(seconds: 2),
    () {
      navigateToPage(context, page);
    },
  );
}
