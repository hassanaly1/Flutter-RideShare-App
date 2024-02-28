import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_images.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/view/home/search_ride/search_results.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            BottomSection(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: CustomButton(
          buttonText: 'Search',
          onTap: () => Get.to(() => const SearchResultScreen(),
              transition: Transition.rightToLeft),
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: 'Search Ride',
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
          ReUsableContainer(
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svgs/location.svg'),
                const SizedBox(width: 12.0),
                CustomTextWidget(
                  text: 'Starting City',
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          ReUsableContainer(
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svgs/location.svg'),
                const SizedBox(width: 12.0),
                CustomTextWidget(
                  text: 'Destination City',
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          ReUsableContainer(
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svgs/departure.svg'),
                const SizedBox(width: 12.0),
                CustomTextWidget(
                  text: 'Date ( Optional )',
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                const Icon(
                  Icons.calendar_today_rounded,
                  size: 20.0,
                )
              ],
            ),
          ),
          SizedBox(height: context.height * 0.01),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.textColor)),
                    child: Center(
                        child: CustomTextWidget(
                      text: 'Today',
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.textColor)),
                    child: Center(
                        child: CustomTextWidget(
                      text: 'Tomorrow',
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.35,
      decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/dashboard_background.png'),
            fit: BoxFit.cover,
          )),
      child: Center(
          child: Image.asset(
        AppImages.appLogo,
        height: 120,
      )),
    );
  }
}
