import 'package:be_talent/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

TextStyle heading1({Color? color, FontWeight? fontWeight, double? fontSize}) {
  return TextStyle(
    fontSize: fontSize ?? 20,
    color: color ?? AppColors.black,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
}

TextStyle heading2({Color? color, FontWeight? fontWeight, double? fontSize}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    color: color ?? AppColors.black,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
}

TextStyle heading3({Color? color, FontWeight? fontWeight, double? fontSize}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    color: color ?? AppColors.black,
    fontWeight: fontWeight ?? FontWeight.normal,
    fontStyle: FontStyle.normal,
  );
}
