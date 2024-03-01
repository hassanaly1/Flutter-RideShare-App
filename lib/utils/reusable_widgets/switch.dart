import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool)? onChanged;
  const CustomSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      activeColor: AppColors.primaryColor,
      inactiveThumbColor: AppColors.primaryColor,
      inactiveTrackColor: Colors.grey.shade200,
      value: value,
      onChanged: onChanged,
    );
  }
}
