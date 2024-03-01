import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';

class ReUsableAccountTabs extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Widget? widget;
  final double? height;
  final VoidCallback? onTap;
  const ReUsableAccountTabs({
    super.key,
    required this.text,
    this.textColor,
    this.widget,
    this.onTap,
    this.height = 55,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.grey.shade100,
      splashColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(16.0),
      child: ReUsableContainer(
          height: height,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomTextWidget(
                    text: text,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    textColor: textColor ?? AppColors.textColor,
                  ),
                ),
                widget ?? const Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          )),
    );
  }
}
