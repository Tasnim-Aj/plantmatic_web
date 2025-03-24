import 'dart:math';

import 'package:flutter/material.dart';

import '../../widgets/section_path.dart';
import '../header/header_section_old.dart';

class SafetyPage extends StatefulWidget {
  const SafetyPage({super.key});

  @override
  State<SafetyPage> createState() => _SafetyPageState();
}

class _SafetyPageState extends State<SafetyPage> {
  void _scrollToSection(GlobalKey key) {
    Navigator.of(context).pushNamed('/');
  }

  final GlobalKey _homeKey = GlobalKey();

  final GlobalKey _aboutKey = GlobalKey();

  final GlobalKey _manufacturersKey = GlobalKey();

  final GlobalKey _solutionKey = GlobalKey();

  final GlobalKey _referencesKey = GlobalKey();

  final List<Map<String, dynamic>> safetyRules = [
    {"title": "Wear PPE", "icon": Icons.health_and_safety},
    {"title": "Work Permits", "icon": Icons.assignment_turned_in},
    {"title": "Hazard Identification", "icon": Icons.warning_amber_rounded},
    {"title": "Emergency Procedures", "icon": Icons.emergency},
    {"title": "Safe Lifting", "icon": Icons.fitness_center},
    {"title": "Fire Safety", "icon": Icons.local_fire_department},
    {"title": "Electrical Safety", "icon": Icons.electrical_services},
    {"title": "Working at Heights", "icon": Icons.hiking},
    {"title": "Chemical Safety", "icon": Icons.science},
    {"title": "Safe Driving", "icon": Icons.directions_car},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                HeaderSection(
                  onHomeTap: () => _scrollToSection(_homeKey),
                  onAboutTap: () => _scrollToSection(_aboutKey),
                  onManufacturersTap: () => _scrollToSection(_manufacturersKey),
                  onSolutionTap: () => _scrollToSection(_solutionKey),
                  onReferenceTap: () => _scrollToSection(_referencesKey),
                  // onContactTap: () => _scrollToSection(_contactKey),
                ),
                Image.network('https://i.postimg.cc/TYzv2Z9F/slider4.png'),
                // Image.asset(
                //   'images/electrical/slider4.png',
                // ),
                // buildSlider([
                //   // 'images/electrical/slider1.jpg',
                //   // 'images/electrical/slider2.jpg',
                //   // 'images/electrical/slider3.jpg',
                //   'images/electrical/slider4.png',
                //   // 'images/electrical/slider5.jpg',
                //   'images/electrical/slider6.jpg',
                // ]),
                buildSectionPath('Safety', 'about / safety'),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       '10',
                //       style: TextStyle(
                //         fontSize: 100,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.blue, // Custom color
                //         // shadows: [
                //         //   Shadow(
                //         //     color: Colors.black.withOpacity(0.3),
                //         //     blurRadius: 10,
                //         //     offset: const Offset(2, 2),
                //         //   ),
                //         // ],
                //       ),
                //     ),
                //     const SizedBox(width: 24),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         _buildTitleText('GOLDEN RULES'),
                //         _buildTitleText('FOR SAFETY'),
                //       ],
                //     ),
                //     // const SizedBox(width: 24),
                //     // Image.asset(
                //     //   'images/about/hse.png', // Ensure this image exists
                //     //   height: 120,
                //     //   width: 120,
                //     //   fit: BoxFit.contain,
                //     // ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                const SizedBox(height: 40),
                SizedBox(
                  height: 800,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 300),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _buildSafetyContainer(
                                  Icons.health_and_safety, "Wear PPE"),
                              _buildSafetyContainer(
                                  Icons.assignment_turned_in, "Work Permits"),
                              _buildSafetyContainer(
                                Icons.warning_amber_rounded,
                                "Hazard Identification",
                              ),
                              _buildSafetyContainer(
                                  Icons.hiking, "Working at Heights"),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildSafetyContainer(
                                Icons.fitness_center, "Safe Lifting"),
                            const SizedBox(width: 100),
                            Image.network(
                              'https://i.postimg.cc/LXb0C1Qw/safety.png',
                              height: 500,
                              width: 500,
                            ),
                            // Image.asset(
                            //   'images/about/safety.png',
                            //   width: 500,
                            //   height: 500,
                            // ),
                            const SizedBox(width: 100),
                            _buildSafetyContainer(
                                Icons.emergency, "Emergency Procedures"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _buildSafetyContainer(
                                Icons.local_fire_department, "Fire Safety"),
                            _buildSafetyContainer(
                                Icons.electrical_services, "Electrical Safety"),
                            _buildSafetyContainer(
                                Icons.hiking, "Working at Heights"),
                            _buildSafetyContainer(
                                Icons.directions_car, "Safe Driving"),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                // Add the wave animation below the grid
              ],
            ),
            const WaveAnimation(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildSafetyContainer(IconData icon, String text) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              border: Border(
                bottom: BorderSide(color: Colors.blue),
                top: BorderSide(color: Colors.blue),
                left: BorderSide(color: Colors.blue),
                right: BorderSide(color: Colors.blue),
              )),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 50,
          ),
        ),
        const SizedBox(height: 5),
        Text(text),
      ],
    );
  }

  // Widget _buildSafetyCard(Map<String, dynamic> rule) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       CircleAvatar(
  //         backgroundColor: Colors.green.withOpacity(0.2),
  //         radius: 50,
  //         child: Icon(
  //           rule["icon"],
  //           color: Colors.blue,
  //           size: 39,
  //         ),
  //       ),
  //       const SizedBox(height: 2),
  //       Text(
  //         rule["title"],
  //         textAlign: TextAlign.center,
  //         style: const TextStyle(
  //           fontSize: 16,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Color _getIconBackgroundColor(String title) {
    switch (title) {
      case "Wear PPE":
        return Colors.red;
      case "Work Permits":
        return Colors.orange;
      case "Hazard Identification":
        return Colors.yellow;
      case "Emergency Procedures":
        return Colors.green;
      case "Safe Lifting":
        return Colors.blue;
      case "Fire Safety":
        return Colors.pink;
      case "Electrical Safety":
        return Colors.purple;
      case "Working at Heights":
        return Colors.teal;
      case "Chemical Safety":
        return Colors.brown;
      case "Safe Driving":
        return Colors.indigo;
      default:
        return Colors.grey;
    }
  }
}

class WaveAnimation extends StatefulWidget {
  const WaveAnimation({super.key});

  @override
  _WaveAnimationState createState() => _WaveAnimationState();
}

class _WaveAnimationState extends State<WaveAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    // First wave animation (blue)
    _animation1 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    // Second wave animation (green)
    _animation2 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set height for the wave animation
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: WavePainter(
                animationValue1: _animation1.value,
                animationValue2: _animation2.value),
          );
        },
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue1;
  final double animationValue2;

  WavePainter({required this.animationValue1, required this.animationValue2});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = Colors.blue.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    Paint paint2 = Paint()
      ..color = Colors.green.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    double waveHeight = 30; // Increased wave height
    double frequency1 = 0.007; // Increased frequency for the blue wave
    double frequency2 = 0.007; // Increased frequency for the green wave

    Path path1 = Path();
    Path path2 = Path();

    // Create the blue wave
    path1.moveTo(0, size.height / 2);
    for (double x = 0; x <= size.width; x++) {
      path1.lineTo(
        x,
        (sin(frequency1 * (x + animationValue1 * size.width) + (0.5 * pi)) *
                waveHeight) +
            (size.height / 2),
      );
    }
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);
    path1.close();

    // Create the green wave
    path2.moveTo(0, size.height / 2 + waveHeight);
    for (double x = 0; x <= size.width; x++) {
      path2.lineTo(
        x,
        (sin(frequency2 * (x + animationValue2 * size.width) + (pi)) *
                waveHeight) +
            (size.height / 2 + waveHeight),
      );
    }
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
