import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/divider.dart';
import 'package:riilu/utils/reusable_widgets/reusable_list_tile.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';

class StudentsCommunityScreen extends StatelessWidget {
  const StudentsCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Students', centerTitle: true),
        body: Padding(
            padding: const EdgeInsets.only(
                bottom: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                right: AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainHeading(text: 'School', fontWeight: FontWeight.w600),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const SubHeading(
                  text:
                      'Students receive a \$5 discount when verifying their email before September 1, 2024',
                  maxLines: 3,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ReUsableTextField(hintText: 'Find your school'),
                const CustomDivider(),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const MainHeading(
                    text: 'All School(109)',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Expanded(
                  child: Scrollbar(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) => ReUsableListTile(
                          title: 'Banff University',
                          subTitle: '31$index members'),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
