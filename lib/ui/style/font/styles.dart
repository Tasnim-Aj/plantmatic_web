import 'package:flutter/material.dart';

import '../custom_color.dart';

class AppStyles {
  static TextStyle titleSection = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 4,
        offset: Offset(2, 2),
      ),
    ],
  );

  static const TextStyle manufacturerTitleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 2,
  );

  static const TextStyle readMoreTextStyle = TextStyle(
    color: CustomColor.secondaryColor,
    fontWeight: FontWeight.bold,
  );
}
