import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';

class ReUsableContainer extends StatelessWidget {
  final Widget child;
  final bool showDottedBorder;

  const ReUsableContainer({
    super.key,
    required this.child,
    this.showDottedBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
      child: showDottedBorder
          ? DottedBorder(
              color: AppColors.primaryColor,
              strokeCap: StrokeCap.butt,
              borderPadding: const EdgeInsets.all(1.0),
              borderType: BorderType.RRect,
              radius: const Radius.circular(12.0),
              child: _buildContainer(),
            )
          : _buildContainer(),
    );
  }

  Widget _buildContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
