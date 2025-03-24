import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

class TitleSection extends StatelessWidget {
  final String title;
  const TitleSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: CustomColor.primaryColor,
          // letterSpacing: 1.1,
        ),
      ),
    );
  }
}
