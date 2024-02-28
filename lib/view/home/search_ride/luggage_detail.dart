import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/dropdown.dart';
import 'package:riilu/view/home/search_ride/checkout.dart';

class LuggageDetailScreen extends StatelessWidget {
  const LuggageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Luggage Detail'),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.spaceBtwSections),
              CustomTextWidget(
                text: 'No. of Checked luggage',
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
              const CustomDropdown(
                items: [
                  'Big Suitcases',
                  'Small Suitcases',
                  'Large Bags',
                  'Small Bags',
                  'Backpacks'
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              CustomTextWidget(
                text: 'No. of cabin luggages',
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
              const CustomDropdown(
                items: [
                  'Cabin Suitcases',
                  'Small duffel bags',
                  'Laptop bags',
                  'Travel adapters',
                  'Toiletries kit',
                  'Neck pillows',
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CustomButton(
            buttonText: 'Next',
            onTap: () => Get.to(() => const CheckoutScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }
}
