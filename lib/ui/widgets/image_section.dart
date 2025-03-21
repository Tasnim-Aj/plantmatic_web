import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String imagePath;
  const ImageSection({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ));
  }
}
