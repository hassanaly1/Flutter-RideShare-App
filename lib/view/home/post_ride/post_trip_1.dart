import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/dropdown.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
import 'package:riilu/utils/reusable_widgets/tabbar.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/post_ride/post_trip_2.dart';
import 'package:riilu/view/home/search_ride/luggage_detail.dart';

class PostTripScreen1 extends StatelessWidget {
  const PostTripScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
                  ReUsableContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          ReUsableIcon(icon: Icons.copy_outlined),
                          SubHeading(text: 'Copy details from a previous trip')
                        ]),
                        const Divider(),
                        SubHeading(
                            text: 'Toronto to Windsor', useTextColor: true),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SubHeading(
                                text: '3 seats \$50 per seat',
                                useTextColor: true),
                            SubHeading(text: 'Copy'),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  MainHeading(text: 'Origin', fontWeight: FontWeight.w600),
                  ReUsableContainer(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/svgs/location.svg'),
                        const SizedBox(width: 12.0),
                        CustomTextWidget(
                          text: 'Starting City',
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.lightTextColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  MainHeading(text: 'Destination', fontWeight: FontWeight.w600),
                  ReUsableContainer(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/svgs/location.svg'),
                        const SizedBox(width: 12.0),
                        CustomTextWidget(
                            text: 'Destination City',
                            textColor: AppColors.lightTextColor,
                            fontWeight: FontWeight.w500)
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  MainHeading(text: 'Stops', fontWeight: FontWeight.w600),
                  ReUsableContainer(
                    showDottedBorder: true,
                    child: Row(
                      children: [
                        ReUsableIcon(
                          icon: Icons.add,
                          iconColor: AppColors.primaryColor,
                          size: 22,
                        ),
                        Flexible(
                          child: CustomTextWidget(
                            text: 'Add Stop over points to get more passengers',
                            fontWeight: FontWeight.w500,
                            maxLines: 2,
                            textColor: AppColors.lightTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  MainHeading(
                      text: 'Trip Schedule', fontWeight: FontWeight.w600),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const CustomTabBar(
                    title1: 'One-time trip',
                    title2: 'Recurring Trip',
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SizedBox(
                    height: Get.height * 0.6,
                    child: const TabBarView(
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        OneTimeTripView(),
                        OneTimeTripView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OneTimeTripView extends StatelessWidget {
  const OneTimeTripView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainHeading(text: 'Origin', fontWeight: FontWeight.w600),
        ReUsableContainer(
          child: Row(
            children: [
              SvgPicture.asset('assets/images/svgs/location.svg'),
              const SizedBox(width: 12.0),
              CustomTextWidget(
                  text: 'Starting City',
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.lightTextColor)
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        MainHeading(text: 'Destination', fontWeight: FontWeight.w600),
        ReUsableContainer(
          child: Row(
            children: [
              SvgPicture.asset('assets/images/svgs/location.svg'),
              const SizedBox(width: 12.0),
              CustomTextWidget(
                  text: 'Destination City',
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.lightTextColor)
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        MainHeading(text: 'Vehicle Details', fontWeight: FontWeight.w600),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const CustomDropdown(items: ['Skip Vehicle', 'Listed Vehicle']),
        const SizedBox(height: AppSizes.spaceBtwItems),
        CustomButton(
          buttonText: 'Next',
          onTap: () => Get.to(() => const PostTripScreen2(),
              transition: Transition.rightToLeft),
        ),
      ],
    );
  }
}
