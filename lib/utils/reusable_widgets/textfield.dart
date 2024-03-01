import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  Widget? prefixIcon;
  double? fontSize;
  TextEditingController? controller;
  bool obscureText;
  final String? Function(String?)? validator;
  AuthTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.fontSize,
      this.prefixIcon,
      this.obscureText = false,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: Colors.white,
        // elevation: 5.0,
        //
        // shape: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16.0),
        //     borderSide: const BorderSide(color: Colors.transparent)),
        // shadowColor: AppColors.lightTextColor.withOpacity(0.3),
        child: TextFormField(
          keyboardAppearance: Brightness.dark,
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          // cursorColor: MyColorHelper.lightBlue,
          cursorOpacityAnimates: true,
          style: TextStyle(
            fontSize: fontSize ?? 14.0,
            fontWeight: FontWeight.w400,
            //color: MyColorHelper.verdigris,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: fontSize ?? 14.0,
              fontWeight: FontWeight.w400,
              color: AppColors.lightTextColor,
            ),
            errorStyle: TextStyle(
              fontSize: fontSize ?? 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.redAccent,
            ),
            // errorBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(16.0),
            //     borderSide: const BorderSide(
            //       color: Colors.redAccent,
            //     )),
            prefixIcon: prefixIcon,
            // enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(16.0),
            //     borderSide: const BorderSide(
            //       color: Colors.transparent,
            //     )),
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(16.0),
            //     borderSide: const BorderSide(
            //       color: Colors.black54,
            //     )),
          ),
        ),
      ),
    );
  }
}
