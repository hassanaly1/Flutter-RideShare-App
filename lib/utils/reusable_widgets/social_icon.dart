import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const CustomSocialIcon({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: Image(height: 40.0, image: AssetImage(imagePath)),
        ),
      ),
    );
  }
}
