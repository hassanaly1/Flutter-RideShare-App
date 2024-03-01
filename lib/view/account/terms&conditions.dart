import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar:
            const CustomAppBar(title: 'Terms & Conditions', centerTitle: true),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubHeading(
                  text:
                      'Terms and Conditions. | Privacy Policy. | Cookies Policy.',
                  useTextColor: true,
                  fontSize: 15.0,
                  maxLines: 2,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                MainHeading(
                  text: '1.GENERAL CONDITION OF USE',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                SubHeading(
                  text: '1.1 scope and definitions',
                  useTextColor: true,
                  fontSize: 15.0,
                  maxLines: 2,
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                SubHeading(
                  text:
                      'These General conditions of use apply to all services provided by RiillU (defined herein below). RiillU owns and operates the site (defined herein below) in US.',
                  maxLines: 5,
                  fontSize: 14.0,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                SubHeading(
                  text: 'Defined Terms',
                  useTextColor: true,
                  fontSize: 15.0,
                  maxLines: 2,
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                SubHeading(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Egestas orci dui vestibulum convallis. Enim eu fringilla eget augue adipiscing massa purus quis. At pellentesque sapien ut nunc tortor.',
                  maxLines: 5,
                  fontSize: 14.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
