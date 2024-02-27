import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_button.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/validator.dart';
import 'package:riilu/view/auth/otp.dart';

class PhoneNumberScreen extends StatefulWidget {
  CountryCode? countryCode;
  GlobalKey<FormState> phoneFormKey = GlobalKey<FormState>();

  PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  late String phoneNumber;

  final countryPicker = FlCountryCodePicker(
    title: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: CustomTextWidget(
            text: 'Select Country',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center),
      ),
    ),
    countryTextStyle: const TextStyle(
      fontSize: 14.0,
      fontFamily: 'Montserrat',
    ),
    searchBarTextStyle: const TextStyle(
      fontSize: 14.0,
      fontFamily: 'Montserrat',
    ),
    dialCodeTextStyle: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    ),
    localize: true,
    showDialCode: true,
    showSearchBar: true,
  );

  GlobalKey<FormState> phoneFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    widget.countryCode = const CountryCode(
      name: 'USA',
      code: '+71',
      dialCode: '+71',
    );
  }

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
                SizedBox(height: context.height * 0.1),
                Image.asset(
                  'assets/images/phone_number.png',
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: context.height * 0.05),
                CustomTextWidget(
                  text: 'Add your Phone Number',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextWidget(
                  text:
                      'Enter your phone number in order to send your verification code.',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  textColor: AppColors.lightTextColor,
                ),
                SizedBox(height: context.height * 0.02),
                Form(
                  key: phoneFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 2.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 6.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                widget.countryCode = await countryPicker
                                    .showPicker(context: context);
                                if (widget.countryCode != null) {
                                  debugPrint(widget.countryCode!.dialCode);
                                }
                                setState(() {});
                              },
                              child: Container(
                                  height: 50,
                                  color: Colors.transparent,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(CupertinoIcons.phone_circle,
                                            color: AppColors.primaryColor),
                                        const SizedBox(width: 5.0),
                                        CustomTextWidget(
                                          text:
                                              '(${widget.countryCode?.dialCode})',
                                          fontSize: 14,
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                        ),
                                        const VerticalDivider()
                                      ],
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: TextFormField(
                                validator: (value) =>
                                    AppValidator.validatePhoneNumber(value),
                                onChanged: (value) {
                                  phoneNumber =
                                      (widget.countryCode!.dialCode + value);
                                },
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textColor,
                                ),
                                keyboardType: TextInputType.phone,
                                keyboardAppearance: Brightness.light,
                                decoration: const InputDecoration(
                                  hintText: 'Enter Phone Number',
                                  hintStyle: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: context.height * 0.1),
                CustomButton(
                  buttonText: 'Continue',
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
