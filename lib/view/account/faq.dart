import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/reusable_account_tabs.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  List faqs = [
    'I can’t reach my driver or passenger',
    'My drive didn’t show up',
    'My passenger didn’t show up',
    'Report abuse or scam',
    'I have safety concerns',
  ];

  List<String> paymentFAQs = [
    'What payment methods are accepted on the platform?',
    'How can I add or update my payment information?',
    'I was charged incorrectly. How can I dispute a fare or transaction?',
    'Is it possible to tip my driver through the app?',
    'Why was my payment declined, and what should I do about it?',
    'How do I view my ride or transaction history?',
    'What happens if my payment method fails during a ride?',
    'Are there any additional fees or surcharges I should be aware of?',
    'Can I split the fare with other passengers?',
    'How do refunds work if there was an issue with my ride?',
    'Is it possible to get a receipt for my ride?',
    'What security measures are in place to protect my payment information?',
    'I have a promo code. How can I apply it to my fare?',
    'What currencies are accepted for payment?',
    'How does the billing process work for shared rides or carpools?',
    'What should I do if I see an unauthorized charge on my account?',
    'Do drivers have access to my credit card details?',
    'Is there a cancellation fee, and how is it determined?',
    'Can I use different payment methods for different rides?',
    'How can I update the default payment method on my account?',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Help', centerTitle: true),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainHeading(
                    text: 'Get quick answers here',
                    fontWeight: FontWeight.w600),
                ReUsableTextField(
                  showBackgroundShadow: false,
                  suffixIcon: Icon(CupertinoIcons.search,
                      size: 25.0, color: AppColors.lightTextColor),
                  hintText: 'How can we help?',
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const MainHeading(
                  text: 'My Trip',
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Scrollbar(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: faqs.length,
                    itemBuilder: (context, index) =>
                        ReUsableAccountTabs(text: faqs[index]),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const MainHeading(
                  text: 'Passenger Payments',
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Scrollbar(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: paymentFAQs.length,
                    itemBuilder: (context, index) =>
                        ReUsableAccountTabs(text: paymentFAQs[index]),
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
