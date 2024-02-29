import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/divider.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';
import 'package:riilu/view/home/search_ride/dashboard.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Payment Information'),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/svgs/departure.svg'),
                    SizedBox(width: context.width * 0.03),
                    MainHeading(text: 'Departure'),
                    const Spacer(),
                    SubHeading(text: '17/Nov/2023'),
                    SizedBox(width: context.width * 0.03),
                    SubHeading(text: '9:00 pm', useTextColor: true)
                  ],
                ),
                const CustomDivider(),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/svgs/location.svg'),
                    SizedBox(width: context.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubHeading(text: 'Boarding Point'),
                        MainHeading(text: 'Chennai'),
                        SubHeading(text: 'Velacherry'),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SubHeading(text: 'Dropping'),
                        MainHeading(text: 'Bangalore'),
                        SubHeading(text: 'Attibele'),
                      ],
                    )
                  ],
                ),
                const CustomDivider(),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/svgs/person.svg'),
                    SizedBox(width: context.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubHeading(text: 'No. of Passengers'),
                        MainHeading(text: 'Siva Kumar (32,M)'),
                      ],
                    ),
                    const Spacer(),
                    SubHeading(text: '2', useTextColor: true)
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                ExpansionTile(
                    initiallyExpanded: true,
                    childrenPadding: EdgeInsets.zero,
                    tilePadding: EdgeInsets.zero,
                    title: MainHeading(text: 'Fare Breakup'),
                    children: [
                      buildListTile(title: 'No. of Passengers', data: '2'),
                      buildListTile(title: 'Cost per Seat', data: '45\$'),
                      buildListTile(title: 'No. of Checked in Bags', data: '2'),
                      buildListTile(
                          title: 'Additional cost for Luggage',
                          data: '2 x 10\$'),
                    ]),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainHeading(text: 'Total'),
                    MainHeading(text: '110\$'),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Row(
                  children: [
                    Image.asset('assets/images/visa.png', height: 50),
                    SizedBox(width: context.width * 0.03),
                    MainHeading(text: 'Debit / Credit Card'),
                    const Spacer(),
                    Radio(
                      value: true,
                      groupValue: 'true',
                      onChanged: (value) {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CustomButton(
            buttonText: 'Pay Now',
            onTap: () => Get.to(() => const DashboardScreen(),
                transition: Transition.rightToLeft),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile({required title, required data}) {
    return ListTile(
      title: SubHeading(text: title),
      trailing: SubHeading(text: data),
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(vertical: -4.0),
    );
  }
}
