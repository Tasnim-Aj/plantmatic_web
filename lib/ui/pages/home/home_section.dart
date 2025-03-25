import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../widgets/silderWidget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColor.primaryColor,
      ),
      child: Column(
        children: [
          buildSlider([
            'https://i.ibb.co/CsVNJT1F/home-slider4.jpg',
            'https://i.ibb.co/CsVNJT1F/home-slider4.jpg',
            'https://i.ibb.co/CsVNJT1F/home-slider4.jpg',
          ]),
          const SizedBox(height: 20),
          const Text(
            'What We Do ?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildCard(
                context,
                icon: Icons.electrical_services, // أيقونة الهندسة الكهربائية
                text: 'Electrical Engineering',
                subTitle:
                    'Smart, sustainable, as per IEEE standards, environmental & highly efficient electrical solutions.',
                detailsPageRoute: '/electricalDetails',
              ),
              _buildCard(
                context,
                icon: Icons.settings, // أيقونة الأتمتة
                text: 'Automation Engineering ',
                subTitle:
                    'Accurate, Smart, state of the art, precise, traceable, maintenance free and modern field instruments.',
                detailsPageRoute: '/automationDetails',
              ),
              _buildCard(
                context,
                icon: Icons.device_thermostat, // أيقونة أجهزة القياس
                text: 'Instrumentation Engineering',
                subTitle:
                    'Comprehensive, professional, open source, zero fault, expandable and innovative Process & Safety control systems.',
                detailsPageRoute: '/instrumentationDetails',
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String text,
    required String subTitle,
    required String detailsPageRoute,
  }) {
    return Container(
      width: 250,
      height: 280,
      decoration: BoxDecoration(
        color: CustomColor.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: CustomColor.secondaryColor.withOpacity(0.4),
            radius: 40,
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, detailsPageRoute);
            },
            style: TextButton.styleFrom(
              backgroundColor: CustomColor.secondaryColor.withOpacity(0.4),
            ),
            child: const Text(
              'Read more',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
