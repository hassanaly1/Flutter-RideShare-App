import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/view/home/search_ride/luggage_detail.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar:
              const CustomAppBar(title: 'Select boarding and drop off points'),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black45)),
                  child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: AppColors.primaryColor,
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins'),
                    labelColor: Colors.white,
                    unselectedLabelColor: AppColors.primaryColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(text: 'Boarding Point'),
                      Tab(text: 'Drop off Points'),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      BookingPointView(),
                      BookingPointView(),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: CustomButton(
              buttonText: 'Next',
              onTap: () => Get.to(() => const LuggageDetailScreen(),
                  transition: Transition.rightToLeft),
            ),
          ),
        ),
      ),
    );
  }
}

class BookingPointView extends StatelessWidget {
  const BookingPointView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: const Icon(Icons.circle_outlined),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextWidget(
                text: '21:45',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(width: 8.0),
              Flexible(
                child: CustomTextWidget(
                  text: 'William',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8.0),
              CustomTextWidget(
                text: 'Toronto, Canada',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                textColor: AppColors.lightTextColor,
              ),
            ],
          ),
          subtitle: CustomTextWidget(
            text: 'Please enter a landmark for easy identification',
            fontWeight: FontWeight.w400,
            textColor: AppColors.lightTextColor,
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.shade200,
          indent: 20.0,
          endIndent: 20.0,
        ),
        itemCount: 8,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}
