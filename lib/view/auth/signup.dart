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
import 'package:riilu/utils/validator.dart';
import 'package:riilu/view/auth/login.dart';
import 'package:riilu/view/auth/phone_number.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
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
                    text: 'Sign Up',
                    fontSize: 24.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: context.height * 0.01),
                  CustomTextWidget(
                    text: 'Fill out following details',
                    fontSize: 16.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: context.height * 0.01),
                  Form(
                    key: signupFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // AuthTextField(
                        //   hintText: 'Username',
                        //   validator: (val) =>
                        //       AppValidator.validateEmptyText('Username', val),
                        //   prefixIcon: Icon(
                        //     CupertinoIcons.person_crop_circle,
                        //     color: AppColors.primaryColor,
                        //     size: 35,
                        //   ),
                        // ),
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
                        // AuthTextField(
                        //   hintText: 'Confirm Password',
                        //   validator: (val) =>
                        //       AppValidator.validatePassword(val),
                        //   prefixIcon: Icon(
                        //     CupertinoIcons.lock_circle,
                        //     color: AppColors.primaryColor,
                        //     size: 35,
                        //   ),
                        // ),
                        ReUsableTextField(
                          hintText: 'Username',
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.mail),
                          validator: (val) => AppValidator.validateEmptyText(
                              fieldName: 'Username', value: val),
                        ),
                        ReUsableTextField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.lock),
                          validator: (val) =>
                              AppValidator.validateEmail(value: val),
                        ),
                        ReUsableTextField(
                          hintText: 'Password',
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.mail),
                          validator: (val) =>
                              AppValidator.validatePassword(value: val),
                        ),
                        ReUsableTextField(
                          hintText: 'Confirm Password',
                          prefixIcon: ReUsableIcon(icon: CupertinoIcons.lock),
                          validator: (val) =>
                              AppValidator.validatePassword(value: val),
                        ),
                        SizedBox(height: context.height * 0.03),
                        CustomButton(
                          buttonText: 'Register',
                          onTap: () {
                            Get.to(PhoneNumberScreen());
                            // if (signupFormKey.currentState!.validate()) {
                            //   Get.to(PhoneNumberScreen());
                            //}
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.03),
                  Center(
                    child: GestureDetector(
                      onTap: () => Get.to(() => const LoginScreen(),
                          transition: Transition.rightToLeft),
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an Account? ',
                          style: TextStyle(
                              color: AppColors.lightTextColor,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                          children: [
                            TextSpan(
                              text: 'Login',
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
