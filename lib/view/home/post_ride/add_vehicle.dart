import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/search_ride/dashboard.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Add a Vehicle', centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainHeading(text: 'Add Car Photo', fontWeight: FontWeight.w600),
                ReUsableContainer(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/svgs/upload.svg',
                            color: AppColors.primaryColor, height: 50),
                        CustomTextWidget(
                            text: 'Upload Photo',
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.primaryColor)
                      ],
                    ),
                  ),
                )),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(text: 'Make', fontWeight: FontWeight.w600),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ReUsableTextField(
                  hintText: 'Ford Focus',
                  prefixIcon: ReUsableIcon(
                    icon: CupertinoIcons.car_detailed,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(text: 'Model', fontWeight: FontWeight.w600),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ReUsableTextField(
                  hintText: 'Type',
                  prefixIcon: ReUsableIcon(
                    icon: CupertinoIcons.car_detailed,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(text: 'Color', fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: 'Color',
                  prefixIcon: ReUsableIcon(
                    icon: Icons.color_lens_outlined,
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(text: 'Year', fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: 'Year',
                  prefixIcon: ReUsableIcon(
                    icon: CupertinoIcons.calendar,
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(text: 'License Plate', fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: 'Pop 123',
                  prefixIcon: ReUsableIcon(
                    icon: Icons.money,
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CustomButton(
            buttonText: 'Next',
            onTap: () => Get.to(() => const DashboardScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }
}
