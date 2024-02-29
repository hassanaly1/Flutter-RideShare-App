import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class ReUsableIcon extends StatelessWidget {
  final IconData? icon;
  Color? iconColor;
  double? size;
  VoidCallback? onTap;

  ReUsableIcon({super.key, this.icon, this.iconColor, this.size, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryColor)),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              icon,
              color: iconColor ?? AppColors.primaryColor,
              size: size ?? 15,
            ),
          ),
        ),
      ),
    );
  }
}
