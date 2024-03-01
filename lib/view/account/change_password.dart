import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/appbar.dart';
import 'package:riilu/utils/reusable_widgets/reusable_list_tile.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Change Password', centerTitle: true),
        body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(children: [
              ReUsableListTile(
                  title: 'Current Password', subTitle: '•••••••••••••'),
              ReUsableListTile(
                  title: 'Enter New Password', subTitle: '•••••••••••••'),
              ReUsableListTile(
                  title: 'Re-enter New Password', subTitle: '•••••••••••••'),
            ])),
      ),
    );
  }
}
