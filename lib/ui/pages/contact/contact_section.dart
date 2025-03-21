import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildSection("Contact", "Get in touch with us via email or phone.");
  }

  Widget _buildSection(String title, String content) {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[900])),
          const SizedBox(height: 20),
          Text(content,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
