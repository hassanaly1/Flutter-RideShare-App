import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/post_ride/vehicle.dart';
import 'package:riilu/view/home/search_ride/payment.dart';

class PostTripScreen2 extends StatelessWidget {
  const PostTripScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Post a Trip', centerTitle: true),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainHeading(text: 'Pricing', fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: 'Price',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(
                    text: 'Trip Description', fontWeight: FontWeight.w600),
                const SizedBox(height: AppSizes.spaceBtwItems),
                SubHeading(
                  text:
                      'Add any details relevant to your trip for passengers before they book.',
                  maxLines: 2,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ReUsableTextField(
                  hintText: 'Enter your description here.',
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(
                    text: 'Price for each Check-in luggage',
                    fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: 'Price',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                MainHeading(
                    text: 'Available Seats', fontWeight: FontWeight.w600),
                ReUsableTextField(
                  hintText: '1',
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
            buttonText: 'Post a Trip',
            onTap: () => Get.to(() => const VehicleScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }
}
