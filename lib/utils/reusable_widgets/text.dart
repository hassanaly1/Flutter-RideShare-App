import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';

class SubHeading extends StatelessWidget {
  final String text;
  final bool useTextColor;
  const SubHeading({
    super.key,
    required this.text,
    this.useTextColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        textColor:
            useTextColor ? AppColors.textColor : AppColors.lightTextColor);
  }
}

class MainHeading extends StatelessWidget {
  final String text;
  const MainHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text, fontSize: 18.0, fontWeight: FontWeight.w500);
  }
}
