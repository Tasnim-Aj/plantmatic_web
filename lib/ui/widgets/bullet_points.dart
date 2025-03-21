import 'package:flutter/material.dart';

class BulletPoints extends StatelessWidget {
  final List<String> points;
  const BulletPoints({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points
          .map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green[600], size: 18),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      point,
                      style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
