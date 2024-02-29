import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/view/account/account.dart';
import 'package:riilu/view/auth/login.dart';
import 'package:riilu/view/home/post_ride/post_trip_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'riilu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
