import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/reusable_account_tabs.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Notification', centerTitle: true),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            children: [
              ReUsableAccountTabs(
                text: 'Push Notification',
                onTap: () => Get.to(() => const NotificationScreen(),
                    transition: Transition.rightToLeft),
              ),
              ReUsableAccountTabs(
                text: 'Email',
                onTap: () => Get.to(() => const NotificationScreen(),
                    transition: Transition.rightToLeft),
              ),
              ReUsableAccountTabs(
                text: 'Phone Number',
                onTap: () => Get.to(() => const NotificationScreen(),
                    transition: Transition.rightToLeft),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
