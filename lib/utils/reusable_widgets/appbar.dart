import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/app_sizes.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            top: AppSizes.defaultSpace,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace),
        child: AppBar(
          backgroundColor: AppColors.backgroundColor,
          // automaticallyImplyLeading: false,
          title: Flexible(
            child: CustomTextWidget(
              text: title,
              maxLines: 2,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: actions,
          leading: ReUsableIcon(
            onTap: () => Get.back(),
            icon: Icons.keyboard_arrow_left_rounded,
            iconColor: AppColors.textColor,
            size: 20.0,
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:riilu/utils/app_colors.dart';
// import 'package:riilu/utils/reusable_widgets/custom_text.dart';
// import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
//
// class CustomAppbar extends StatelessWidget {
//   final String text;
//   const CustomAppbar({
//     super.key,
//     required this.text,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         ReUsableIcon(
//           onTap: () => Get.back(),
//           icon: Icons.keyboard_arrow_left_rounded,
//           iconColor: AppColors.textColor,
//           size: 25.0,
//         ),
//         Flexible(
//           child: CustomTextWidget(
//             text: text,
//             fontSize: 20.0,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const Icon(Icons.add, color: Colors.transparent)
//       ],
//     );
//   }
// }
