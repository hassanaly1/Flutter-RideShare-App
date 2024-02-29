import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/post_ride/add_vehicle.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Vehicle', centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: SubHeading(text: 'Looks like you have no vehicle, yet.'),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CustomButton(
            buttonText: 'Add a Vehicle',
            onTap: () => Get.to(() => const AddVehicleScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }
}
