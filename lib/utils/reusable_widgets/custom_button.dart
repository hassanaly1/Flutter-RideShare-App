import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double width;
  final double? height;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.width = double.infinity,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height ?? 60,
          width: width,
          decoration: BoxDecoration(
              color: buttonColor ?? AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: borderColor ?? AppColors.primaryColor)),
          child: Center(
              child: CustomTextWidget(
            text: buttonText,
            fontSize: 18,
            textColor: textColor ?? Colors.white,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ))),
    );
  }
}
