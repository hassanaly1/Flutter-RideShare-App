import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;
  bool useMontserratFont;
  int? maxLines;
  CustomTextWidget({
    super.key,
    required this.text,
    this.textColor,
    this.textAlign,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.useMontserratFont = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: useMontserratFont ? 'Montserrat' : 'Poppins',
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: textColor ?? AppColors.textColor,
      ),
    );
  }
}
