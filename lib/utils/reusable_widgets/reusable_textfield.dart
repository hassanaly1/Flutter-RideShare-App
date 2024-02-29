import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';

class ReUsableTextField extends StatelessWidget {
  final String hintText;
  int? maxLines;
  Widget? prefixIcon;
  TextInputType? keyboardType;
  ReUsableTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.maxLines = 1,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return ReUsableContainer(
      child: TextFormField(
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: AppColors.textColor,
        ),
        keyboardType: keyboardType,
        decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(vertical: 4.0),
            // isCollapsed: true,
            isDense: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AppColors.lightTextColor,
            )),
      ),
    );
  }
}
