import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/view/auth/login.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(height: context.height * 0.07),
                RichText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor),
                    children: <TextSpan>[
                      const TextSpan(
                        text:
                            'RIILU is a fast, effective and efficient app for ',
                      ),
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: const Text(
                                'Rideshare',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextWidget(
                    text:
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu',
                    fontSize: 14.0,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: context.height * 0.02),
                Image.asset(
                  'assets/images/get_started.png',
                  height: 356,
                  width: 356,
                ),
                SizedBox(height: context.height * 0.05),
                CustomButton(
                  buttonText: 'Get Started',
                  onTap: () => Get.to(() => const LoginScreen(),
                      transition: Transition.rightToLeft),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
