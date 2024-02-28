import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/view/home/search_ride/payment.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          title: 'Boarding & Dropping',
          actions: [
            CustomTextWidget(
              text: 'Change',
              textColor: AppColors.primaryColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomTextWidget(
                      text: 'No. of Checked in luggage',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextWidget(
                    text: '2',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const Divider(),
              CustomTextWidget(
                text: 'Total Fare',
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.top,
                title: CustomTextWidget(
                  text: 'Amount',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
                subtitle: CustomTextWidget(
                  text: 'Taxes will be calculated during payment',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.lightTextColor,
                  maxLines: 2,
                ),
                trailing: CustomTextWidget(
                  text: 'INR 1117.00',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: CustomTextWidget(
                    text: 'Show Fare Details',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.primaryColor,
                  ),
                ),
              )
              // TimelineTile(
              //   isFirst: true,
              //   alignment: TimelineAlign.start,
              //   beforeLineStyle: LineStyle(color: Colors.grey),
              //   indicatorStyle: IndicatorStyle(
              //       width: 15, color: AppColors.primaryColor, height: 20.0),
              //   endChild: CustomTextWidget(
              //     text: 'Driver is arrived',
              //     fontSize: 15,
              //   ),
              // ),
              // TimelineTile(
              //   isLast: true,
              //   alignment: TimelineAlign.start,
              //   indicatorStyle:
              //       const IndicatorStyle(width: 15, color: Colors.grey),
              //   endChild: CustomTextWidget(
              //     text: 'Driver is arrived',
              //     fontSize: 15,
              //   ),
              // )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CustomButton(
            buttonText: 'Proceed to book',
            onTap: () => Get.to(() => const PaymentScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }
}
