import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/view/home/search_ride/dashboard.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinController = TextEditingController();
  Color borderColor = const Color.fromRGBO(114, 178, 238, 1);
  Color errorColor = const Color.fromRGBO(255, 234, 238, 1);
  Color fillColor = const Color.fromRGBO(222, 231, 240, .57);
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(222, 231, 240, .57),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );

  bool _timerInProgress = true;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        setState(() {
          _timerInProgress = false;
        });
        timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: context.height * 0.02),
                  Image.asset(
                    'assets/images/phone_number.png',
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(height: context.height * 0.02),
                  CustomTextWidget(
                    text:
                        'Enter the 4-digit code sent to ${widget.phoneNumber}',
                    fontSize: 16.0,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomTextWidget(
                      text:
                          'Please check your mobile to receive 4 digit code to continue.',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      textColor: AppColors.lightTextColor,
                    ),
                  ),
                  SizedBox(height: context.height * 0.05),
                  Pinput(
                    controller: _pinController,
                    validator: (s) {
                      return s == '2222' ? null : 'Incorrect pin, try again!';
                    },
                    errorTextStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      color: Colors.redAccent,
                    ),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: defaultPinTheme.copyWith(
                      height: 68,
                      width: 64,
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(color: borderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyWith(
                      decoration: BoxDecoration(
                        color: errorColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onCompleted: (pin) {
                      if (pin == '2222') {
                        // Utils().toastMessage('Login Successfully');
                        Get.offAll(const DashboardScreen(),
                            transition: Transition.rightToLeft);
                      }
                      setState(() {
                        _pinController.clear();
                        _timerInProgress = false;
                      });
                    },
                  ),
                  SizedBox(height: context.height * 0.02),
                  _timerInProgress
                      ? CustomTextWidget(text: 'Resend OTP in $_start seconds')
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              CustomTextWidget(
                                text: 'Didn\'t receive the code?',
                                textColor: Colors.black,
                                fontSize: 14,
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _timerInProgress = true;
                                    _start = 60;
                                  });
                                  _pinController.clear();
                                  startTimer();
                                },
                                child: CustomTextWidget(
                                  text: 'Resend OTP',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                  //

                  SizedBox(height: context.height * 0.03),
                  CustomButton(
                    buttonText: 'Continue',
                    onTap: () {
                      // Validate OTP and perform actions
                      String enteredOTP = _pinController.text;
                      if (enteredOTP.length == 4) {
                        // Perform validation and actions here
                      }
                    },
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
