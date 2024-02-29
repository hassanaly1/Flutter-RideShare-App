import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/custom_text.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';

class CustomDropdown extends StatelessWidget {
  final List items;
  const CustomDropdown({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ReUsableContainer(
      child: DropdownButtonFormField(
        hint: SubHeading(text: items[0]),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        style: TextStyle(
            fontSize: 14.0, fontFamily: 'poppins', color: AppColors.textColor),
        padding: EdgeInsets.zero,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            constraints: BoxConstraints(maxHeight: context.height * 0.08)),
        borderRadius: BorderRadius.circular(12.0),
        items: items
            .map((options) => DropdownMenuItem(
                value: options,
                child: CustomTextWidget(
                  text: options,
                  fontSize: 12.0,
                )))
            .toList(),
        onChanged: (value) {},
      ),
    );
  }
}
