import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        children: [
          Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "ABOUT ",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.primaryColor,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  children: [
                    TextSpan(
                      text: "US",
                      style: TextStyle(
                        color: CustomColor.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 1,
                      color: CustomColor.grey,
                    ),
                    Container(
                      width: 50,
                      height: 2,
                      color: CustomColor.primaryColor,
                    ),
                    Container(
                      width: 50,
                      height: 2,
                      color: CustomColor.secondaryColor,
                    ),
                    Container(
                      width: 100,
                      height: 1,
                      color: CustomColor.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCard(context,
                  icon: Icons.people,
                  text: 'Organization\nChart',
                  borderColor: CustomColor.primaryColor,
                  detailsPageRoute: '/orgDetails'),
              _buildCard(context,
                  icon: Icons.security,
                  text: 'Safety HSE',
                  borderColor: CustomColor.secondaryColor,
                  detailsPageRoute: '/safetyDetails'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String text,
    required Color borderColor,
    required String detailsPageRoute,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 260,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 2),
        boxShadow: [
          BoxShadow(
            color: borderColor.withOpacity(0.5),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 45,
            child: Icon(
              icon,
              size: 60,
              color: borderColor,
            ),
          ),
          const SizedBox(height: 20),
          _buildText(text),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, detailsPageRoute);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: borderColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Read more',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white.withOpacity(0.9),
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
      ),
    );
  }
}
