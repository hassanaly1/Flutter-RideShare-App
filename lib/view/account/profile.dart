import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/divider.dart';
import 'package:riilu/utils/reusable_widgets/reusable_account_tabs.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/switch.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/account/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final RxBool isDriver = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Profile', centerTitle: true),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: const CircleAvatar(radius: 25),
                    title: CustomTextWidget(
                      text: 'William Jones',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4.0),
                        CustomTextWidget(
                          text: 'Williamjones@gmail.com',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          textColor: AppColors.lightTextColor,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 4.0),
                        CustomTextWidget(
                          text: 'Male: 33 Years',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.lightTextColor,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    trailing: OpenContainer(
                      openColor: Colors.transparent,
                      closedColor: Colors.transparent,
                      transitionDuration: const Duration(seconds: 1),
                      closedBuilder: (context, action) {
                        return const Icon(FontAwesomeIcons.penToSquare);
                      },
                      openBuilder: (context, action) {
                        return const EditProfileScreen();
                      },
                      openElevation: 0,
                      closedElevation: 0,
                      closedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    )),
                const CustomDivider(),
                ReUsableContainer(
                    child: const Row(
                  children: [
                    UserStats(heading: 'Trips Completed', stats: '15'),
                    UserStats(heading: 'People Driven', stats: '40'),
                    UserStats(heading: 'Distance Covered', stats: '18 KMS'),
                  ],
                )),
                const MainHeading(text: 'Date Of Birth'),
                ReUsableTextField(hintText: 'Sep 5th, 1990'),
                const MainHeading(text: 'Gender'),
                ReUsableTextField(hintText: 'Male'),
                const MainHeading(text: 'Phone Number'),
                ReUsableTextField(
                  hintText: '97463453658',
                  keyboardType: TextInputType.number,
                ),
                const MainHeading(text: 'Profile Type'),
                Obx(
                  () => ReUsableAccountTabs(
                    height: 70,
                    onTap: () => Get.to(() => ProfileScreen(),
                        transition: Transition.rightToLeft),
                    text: 'Driver',
                    textColor: AppColors.lightTextColor,
                    widget: CustomSwitch(
                      value: isDriver.value,
                      onChanged: (value) => isDriver.value = value,
                    ),
                  ),
                ),
                const MainHeading(text: 'Short Description'),
                ReUsableTextField(
                    hintText: 'Enter description here', maxLines: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserStats extends StatelessWidget {
  final String heading;
  final String stats;
  const UserStats({
    super.key,
    required this.heading,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SubHeading(
              text: heading,
              maxLines: 2,
              fontSize: 14.0,
              textAlign: TextAlign.center),
          const SizedBox(height: 10.0),
          MainHeading(text: stats, fontWeight: FontWeight.w600),
        ],
      ),
    );
  }
}
