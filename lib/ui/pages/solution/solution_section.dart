import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../style/font/styles.dart';

class SolutionSection extends StatelessWidget {
  const SolutionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F2),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Column(
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.blue, Colors.green], // الألوان المفضلة
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Text(
                  "SOLUTION",
                  style: AppStyles.titleSection.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
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
                      width: 100,
                      height: 2,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.green, Colors.blue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
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
          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _buildSolutionCard(
                  context,
                  title: 'Tank Gauging',
                  description: 'Accurate measurement solutions.',
                  color: Colors.blue,
                  icon: Icons.speed,
                  detailsPageRoute: '/tankDetails',
                ),
                _buildSolutionCard(
                  context,
                  title: 'Custody Transfer Flow Measurement (FMS)',
                  description: 'Reliable flow solutions.',
                  color: Colors.green,
                  icon: Icons.water,
                  detailsPageRoute: '/fmsDetails',
                ),
                _buildSolutionCard(
                  context,
                  title: 'Panel Building',
                  description: 'Custom-built control panels.',
                  color: Colors.grey,
                  icon: Icons.settings,
                  detailsPageRoute: '/panelDetails',
                ),
                _buildSolutionCard(
                  context,
                  title: 'Steam Generators',
                  description: 'Efficient energy solutions.',
                  color: Colors.teal,
                  icon: Icons.local_fire_department,
                  detailsPageRoute: '/steamDetails',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildSolutionCard(
    BuildContext context, {
    required String title,
    required String description,
    required Color color,
    required IconData icon,
    required String detailsPageRoute,
  }) {
    return SizedBox(
      width: 280,
      height: 320,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color.withOpacity(0.2),
                radius: 50,
                child: Icon(icon, color: color, size: 50),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey[800],
                ),
              ),
              Container(
                width: 60,
                height: 2,
                color: color,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey[600]),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, detailsPageRoute);
                },
                style: TextButton.styleFrom(
                  foregroundColor: color,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text('Read more'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
