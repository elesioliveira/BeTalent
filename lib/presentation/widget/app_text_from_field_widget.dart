import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_icons.dart';

class AppTextFromFieldWidget extends StatefulWidget {
  const AppTextFromFieldWidget({super.key, this.onChanged});
  final Function(String)? onChanged;

  @override
  State<AppTextFromFieldWidget> createState() => _AppTextFromFieldWidgetState();
}

class _AppTextFromFieldWidgetState extends State<AppTextFromFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: 'Pesquisar',
        prefixIcon: iconSearch(),
        filled: true,
        fillColor: AppColors.gray05,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
