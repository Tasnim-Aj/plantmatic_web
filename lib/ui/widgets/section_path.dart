import 'package:flutter/material.dart';

buildSectionPath(String name, String path) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(path),
          ],
        ),
      ),
      Divider(
        color: Colors.grey.shade200,
      ),
    ],
  );
}
