import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';

class SubHeading extends StatelessWidget {
  final String text;
  final bool useTextColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  const SubHeading({
    super.key,
    required this.text,
    this.useTextColor = false,
    this.textAlign,
    this.maxLines = 1,
    this.fontSize = 12.0,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text,
        maxLines: maxLines,
        fontSize: fontSize,
        fontWeight: fontWeight,
        textAlign: textAlign,
        textColor: !useTextColor ? AppColors.lightTextColor : null);
  }
}

class MainHeading extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final bool useLightTextColor;
  final int? maxLines;
  final double? fontSize;
  const MainHeading(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.w500,
      this.useLightTextColor = false,
      this.maxLines = 1,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
        text: text,
        fontSize: fontSize ?? 16.0,
        fontWeight: fontWeight,
        maxLines: maxLines,
        textAlign: TextAlign.center,
        textColor: useLightTextColor ? AppColors.lightTextColor : null);
  }
}
