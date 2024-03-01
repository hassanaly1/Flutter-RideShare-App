import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_images.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
import 'package:riilu/utils/reusable_widgets/reusable_textfield.dart';
import 'package:riilu/utils/reusable_widgets/social_icon.dart';
import 'package:riilu/utils/validator.dart';
import 'package:riilu/view/auth/signup.dart';
import 'package:riilu/view/home/search_ride/dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      AppImages.appLogo,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: context.height * 0.03),
                  CustomTextWidget(
                    text: 'Welcome Back',
                    fontSize: 24.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: context.height * 0.01),
                  CustomTextWidget(
                    text: 'Sign to Continue',
                    fontSize: 16.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: context.height * 0.01),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // AuthTextField(
                        //   hintText: 'Email',
                        //   validator: (val) => AppValidator.validateEmail(val),
                        //   prefixIcon: Icon(
                        //     CupertinoIcons.envelope_circle,
                        //     color: AppColors.primaryColor,
                        //     size: 35,
                        //   ),
                        // ),
                        // AuthTextField(
                        //   hintText: 'Password',
                        //   validator: (val) =>
                        //       AppValidator.validatePassword(val),
                        //   prefixIcon: Icon(
                        //     CupertinoIcons.lock_circle,
                        //     color: AppColors.primaryColor,
                        //     size: 35,
                        //   ),
                        // ),
                        ReUsableTextField(
                          hintText: 'Email',
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.mail),
                          validator: (val) =>
                              AppValidator.validateEmail(value: val),
                        ),
                        ReUsableTextField(
                          hintText: 'Password',
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.lock),
                          validator: (val) =>
                              AppValidator.validatePassword(value: val),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomTextWidget(
                            text: 'Forget Password?',
                            fontSize: 14.0,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: context.height * 0.05),
                        CustomButton(
                          buttonText: 'Login',
                          onTap: () => Get.to(() => const DashboardScreen()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Center(
                    child: CustomTextWidget(
                      text: 'OR',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(color: AppColors.lightTextColor)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: CustomTextWidget(
                            text: 'Sign up with',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                            child: Divider(color: AppColors.lightTextColor)),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSocialIcon(
                            onTap: () {},
                            imagePath: 'assets/images/google-icon.png'),
                        CustomSocialIcon(
                            onTap: () {},
                            imagePath: 'assets/images/facebook-icon.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen(),
                            transition: Transition.rightToLeft);
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an Account? ',
                          style: TextStyle(
                              color: AppColors.lightTextColor,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
