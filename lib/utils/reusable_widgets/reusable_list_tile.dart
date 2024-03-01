import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riilu/utils/reusable_widgets/reusable_container.dart';
import 'package:riilu/utils/reusable_widgets/reusable_icon.dart';
import 'package:riilu/utils/reusable_widgets/text.dart';

class ReUsableListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  const ReUsableListTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ReUsableContainer(
      child: ListTile(
        leading: ReUsableIcon(icon: CupertinoIcons.lock),
        title: SubHeading(text: title, useTextColor: true),
        subtitle: SubHeading(text: subTitle),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
