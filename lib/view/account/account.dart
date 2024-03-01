import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/reusable_account_tabs.dart';
import 'package:riilu/utils/reusable_widgets/switch.dart';
import 'package:riilu/view/account/change_password.dart';
import 'package:riilu/view/account/notifications.dart';
import 'package:riilu/view/account/profile.dart';
import 'package:riilu/view/account/students_community.dart';
import 'package:riilu/view/account/terms&conditions.dart';
import 'package:riilu/view/home/post_ride/vehicle.dart';

import 'faq.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  final RxBool isProfile = false.obs;
  final RxBool isDriverPayouts = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Account', centerTitle: true),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => ReUsableAccountTabs(
                    text: 'Profile',
                    widget: CustomSwitch(
                        value: isProfile.value,
                        onChanged: (value) => isProfile.value = value),
                    onTap: () => Get.to(() => ProfileScreen(),
                        transition: Transition.rightToLeft),
                  ),
                ),
                ReUsableAccountTabs(
                  text: 'Notification',
                  onTap: () => Get.to(() => const NotificationScreen(),
                      transition: Transition.rightToLeft),
                ),
                const ReUsableAccountTabs(text: 'ID Verification'),
                Obx(
                  () => ReUsableAccountTabs(
                    text: 'Driver Payouts',
                    widget: CustomSwitch(
                      value: isDriverPayouts.value,
                      onChanged: (value) => isDriverPayouts.value = value,
                    ),
                  ),
                ),
                ReUsableAccountTabs(
                  text: 'Student Community',
                  onTap: () => Get.to(() => const StudentsCommunityScreen(),
                      transition: Transition.rightToLeft),
                ),
                ReUsableAccountTabs(
                  text: 'Change Password',
                  onTap: () => Get.to(() => const ChangePasswordScreen(),
                      transition: Transition.rightToLeft),
                ),
                ReUsableAccountTabs(
                  text: 'Vehicles',
                  onTap: () => Get.to(() => const VehicleScreen(),
                      transition: Transition.rightToLeft),
                ),
                const ReUsableAccountTabs(text: 'About RILLU'),
                ReUsableAccountTabs(
                  text: 'Terms & Conditions',
                  onTap: () => Get.to(() => const TermsAndConditionScreen(),
                      transition: Transition.rightToLeft),
                ),
                ReUsableAccountTabs(
                  text: 'FAQ’s',
                  onTap: () => Get.to(() => FaqScreen(),
                      transition: Transition.rightToLeft),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
