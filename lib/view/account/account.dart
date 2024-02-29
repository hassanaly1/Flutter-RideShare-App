import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Account', centerTitle: true),
      ),
    );
  }
}
