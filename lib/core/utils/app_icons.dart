import 'package:be_talent/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Icon iconSearch({Color? colorIcon}) {
  return Icon(
    Icons.search,
    color: colorIcon ?? AppColors.black,
  );
}

Icon iconChevronUp({Color? colorIcon}) {
  return Icon(
    CupertinoIcons.chevron_up,
    color: colorIcon ?? AppColors.black,
  );
}

Icon iconChevronDown({Color? colorIcon}) {
  return Icon(
    CupertinoIcons.chevron_down,
    color: colorIcon ?? AppColors.black,
  );
}
