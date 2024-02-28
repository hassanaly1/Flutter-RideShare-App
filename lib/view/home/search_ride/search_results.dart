import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
import 'package:riilu/view/home/search_ride/select_location.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Search Results'),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomTextWidget(
                    text: 'Toronto,ON',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(width: 8.0),
                  Icon(Icons.arrow_right_alt_rounded,
                      color: AppColors.lightTextColor),
                  const SizedBox(width: 8.0),
                  CustomTextWidget(
                    text: 'Windsor,ON',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              CustomTextWidget(
                text: 'Today, 1 Passenger',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                textColor: AppColors.lightTextColor,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              CustomTextWidget(
                text: 'Tomorrow',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Expanded(
                child: Scrollbar(
                  thickness: 5.0,
                  // scrollbarOrientation: ScrollbarOrientation.left,
                  interactive: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const CustomSearchResultAddress();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.primaryColor,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          onPressed: () {},
          label: Row(
            children: [
              CustomTextWidget(
                text: 'Post Ride',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                textColor: Colors.white70,
              ),
              const SizedBox(width: 6.0),
              const Icon(Icons.add_circle_outline_outlined,
                  color: Colors.white70)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchResultAddress extends StatelessWidget {
  const CustomSearchResultAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const SelectLocation(),
          transition: Transition.rightToLeft),
      child: ReUsableContainer(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextWidget(
                  text: 'Tomorrow at 4:45am',
                  fontWeight: FontWeight.w500,
                ),
              ),
              // const Spacer(),
              CustomTextWidget(
                text: '3 Seats left',
                fontWeight: FontWeight.w700,
              ),
              CustomTextWidget(
                text: ' \$45',
                fontWeight: FontWeight.w700,
                textColor: AppColors.primaryColor,
              )
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          const CustomAddress(
            pickupAddress: 'Windsor',
            dropOffAddress: 'Windsor, ON, Canada',
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          const CustomAddress(
            pickupAddress: 'Windsor',
            dropOffAddress: 'Toronto, ON, Canada',
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Row(
            children: [
              ReUsableIcon(icon: FontAwesomeIcons.bagShopping),
              ReUsableIcon(icon: FontAwesomeIcons.snowflake),
            ],
          ),
          const SizedBox(height: 6.0),
          Divider(color: Colors.grey.shade200),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHVzZXJ8ZW58MHx8MHx8fDA%3D'),
                radius: 25,
              ),
              const SizedBox(width: 12.0),
              CustomTextWidget(text: 'Sahil', fontWeight: FontWeight.w500)
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
        ],
      )),
    );
  }
}

class CustomAddress extends StatelessWidget {
  final String pickupAddress;
  final String dropOffAddress;
  const CustomAddress({
    super.key,
    required this.pickupAddress,
    required this.dropOffAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CustomTextWidget(
            text: pickupAddress,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 12.0),
        CustomTextWidget(
          text: dropOffAddress,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
