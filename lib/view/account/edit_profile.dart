import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/post_ride/add_vehicle.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Edit Profile', centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D'),
                          radius: 50.0,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            child: const Icon(CupertinoIcons.camera,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const Center(
                  child: SubHeading(text: 'William Jones', useTextColor: true),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const MainHeading(text: 'First Name', fontSize: 14.0),
                ReUsableTextField(hintText: 'William'),
                const MainHeading(text: 'Last Name', fontSize: 14.0),
                ReUsableTextField(hintText: 'Jones'),
                const MainHeading(text: 'Gender', fontSize: 14.0),
                ReUsableTextField(hintText: 'Male'),
                const MainHeading(text: 'Date of Birth', fontSize: 14.0),
                Row(
                  children: [
                    Expanded(
                        child: ReUsableTextField(
                      hintText: 'Date',
                      keyboardType: TextInputType.number,
                    )),
                    Expanded(
                        child: ReUsableTextField(
                      hintText: 'Month',
                      keyboardType: TextInputType.number,
                    )),
                    Expanded(
                        child: ReUsableTextField(
                      hintText: 'Year',
                      keyboardType: TextInputType.number,
                    )),
                  ],
                ),
                const MainHeading(text: 'Email', fontSize: 14.0),
                ReUsableTextField(
                    hintText: 'Williamjones@gmail.com',
                    keyboardType: TextInputType.emailAddress),
                const MainHeading(text: 'Phone Number', fontSize: 14.0),
                ReUsableTextField(
                    hintText: '97463453658',
                    keyboardType: TextInputType.number),
                const MainHeading(text: 'Short Description', fontSize: 14.0),
                ReUsableTextField(hintText: 'Write here...', maxLines: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.defaultSpace),
                  child: CustomButton(
                    buttonText: 'Save Profile',
                    onTap: () => Get.to(() => const AddVehicleScreen(),
                        transition: Transition.rightToLeft),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
