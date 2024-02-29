import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';

class SubHeading extends StatelessWidget {
  final String text;
  final bool useTextColor;
  int? maxLines;
  SubHeading({
    super.key,
    required this.text,
    this.useTextColor = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text,
        maxLines: maxLines,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        textColor: !useTextColor ? AppColors.lightTextColor : null);
  }
}

class MainHeading extends StatelessWidget {
  final String text;
  FontWeight? fontWeight;
  final bool useLightTextColor;
  MainHeading({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.useLightTextColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text,
        fontSize: 16.0,
        fontWeight: fontWeight,
        textColor: useLightTextColor ? AppColors.lightTextColor : null);
  }
}
