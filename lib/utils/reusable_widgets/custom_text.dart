import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;
  int? maxLines;
  CustomTextWidget(
      {super.key,
      required this.text,
      this.textColor,
      this.textAlign,
      this.fontSize,
      this.maxLines,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: textColor ?? AppColors.textColor,
      ),
    );
  }
}
