import 'package:flutter/material.dart';
import 'package:riilu/utils/app_colors.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';

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
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        style: TextStyle(
            fontSize: 14.0, fontFamily: 'poppins', color: AppColors.textColor),
        padding: EdgeInsets.zero,
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        borderRadius: BorderRadius.circular(12.0),
        items: items
            .map((options) =>
                DropdownMenuItem(value: options, child: Text(options)))
            .toList(),
        onChanged: (value) {},
      ),
    );
  }
}
