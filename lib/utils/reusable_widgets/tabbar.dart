import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  final String title1;
  final String title2;
  const CustomTabBar({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Colors.black45)),
      child: TabBar(
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.primaryColor,
        ),
        labelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'poppins'),
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.primaryColor,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(text: title1),
          Tab(text: title2),
        ],
      ),
    );
  }
}
