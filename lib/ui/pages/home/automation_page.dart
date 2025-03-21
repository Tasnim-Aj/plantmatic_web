import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../../widgets/section_path.dart';
import '../../widgets/silderWidget.dart';
import '../header/header_section_old.dart';

class AutomationPage extends StatefulWidget {
  const AutomationPage({super.key});

  @override
  State<AutomationPage> createState() => _AutomationPageState();
}

class _AutomationPageState extends State<AutomationPage> {
  void _scrollToSection(GlobalKey key) {
    Navigator.of(context).pushNamed('/');
  }

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _manufacturersKey = GlobalKey();
  final GlobalKey _solutionKey = GlobalKey();
  final GlobalKey _referencesKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(
              onHomeTap: () => _scrollToSection(_homeKey),
              onAboutTap: () => _scrollToSection(_aboutKey),
              onManufacturersTap: () => _scrollToSection(_manufacturersKey),
              onSolutionTap: () => _scrollToSection(_solutionKey),
              onReferenceTap: () => _scrollToSection(_referencesKey),
              // onContactTap: () => _scrollToSection(_contactKey),
            ),
            buildSlider([
              // 'images/electrical/slider1.jpg',
              // 'images/electrical/slider2.jpg',
              // 'images/electrical/slider3.jpg',
              'images/electrical/slider4.png',
              // 'images/electrical/slider5.jpg',
              'images/electrical/slider6.jpg',
            ]),
            buildSectionPath(
                'Automation Engineering', 'home / automation engineering'),
            Container(
              // height: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // يبدأ من الأعلى
                  end: Alignment.bottomCenter, // ينتهي في الأسفل
                  colors: [
                    Color.fromRGBO(229, 229, 229, 1), // اللون الأول (0%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثاني (20%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثالث (100%)
                  ],
                  stops: [0.0, 0.2, 1.0], // تحديد مواقع الألوان
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200),
                child: _buildSectionWithImage(
                  image: 'images/automation/automation3.jpg',
                  title:
                      "We at PLANTMATIC have a comprehensive experience in the automation of industrial processes including:",
                  bulletPoints: [
                    'Oil refinery distillation towers.',
                    'Oil refineries blending units.',
                    'Oil refineries inventories monitoring & control.',
                    'Gas pipeline block valves stations control and monitoring.',
                    'Gas pressure reducing and measurement stations process control and safety systems PRMS.',
                  ],
                  isImageRight: false,
                ),
              ),
            ),
            Container(
              // height: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // يبدأ من الأعلى
                  end: Alignment.bottomCenter, // ينتهي في الأسفل
                  colors: [
                    Color.fromRGBO(229, 229, 229, 1), // اللون الأول (0%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثاني (20%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثالث (100%)
                  ],
                  stops: [0.0, 0.2, 1.0], // تحديد مواقع الألوان
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200),
                child: _buildTwoColumnBulletPoints(
                  bulletPoints: [
                    'Upstream separators measurement & control.',
                    'Upstream charismas tress and pumps measurements monitoring.',
                    'Steam generators up to 40 bars & burner management systems.',
                    'Steam Turbine load sharing programming & configuration.',
                    'Steam turbines vibration monitoring system: setup, install and commissioning.',
                    'Power management systems (PMS) and substation control & monitoring.',
                    'Sugar refineries processes: Melting, clarification, filtration, boiling, drying & packaging.',
                    'Utilities : Cooling Tower, condensers, evaporators & steam transformers.',
                    'Grain silos control system for filling, circulation and discharging.',
                    'Water pump stations: monitoring, measurement and control.',
                    'Waste water treatment plant processes: aeration, chemical treatment, chlorination, and pumps control.',
                  ],
                ),
              ),
            ),
            Container(
              // height: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // يبدأ من الأعلى
                  end: Alignment.bottomCenter, // ينتهي في الأسفل
                  colors: [
                    Color.fromRGBO(229, 229, 229, 1), // اللون الأول (0%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثاني (20%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثالث (100%)
                  ],
                  stops: [0.0, 0.2, 1.0], // تحديد مواقع الألوان
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200),
                child: _buildSectionWithImage(
                  image: 'images/automation/automation2.jpg',
                  title: "Our Services:",
                  bulletPoints: [
                    "Projects management as per the PMI knowledge base.",
                    "PLC, SCADA, DCS, ESD, SIS, BMS systems engineering, design, procurement, programming & commissioning.",
                    "Fire & Gas systems design, engineering, procurement, installation, configuration and commissioning.",
                    "Control systems panel assembling.",
                    "Industrial computer and operation station.",
                    "MIMIC diagram and panels design and assembly.",
                  ],
                  isImageRight: true,
                ),
              ),
            ),
            _buildBlurredImageSection(
              image: 'images/automation/automation4.png',
              text:
                  "Full engineering package including but not limited to the following deliverables:",
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // يبدأ من الأعلى
                  end: Alignment.bottomCenter, // ينتهي في الأسفل
                  colors: [
                    Color.fromRGBO(229, 229, 229, 1), // اللون الأول (0%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثاني (20%)
                    Color.fromRGBO(255, 255, 255, 1), // اللون الثالث (100%)
                  ],
                  stops: [0.0, 0.2, 1.0], // تحديد مواقع الألوان
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200),
                child: _buildTwoColumnBulletPoints(
                  bulletPoints: [
                    'Basic & detailed design.',
                    'Inputs & outputs lists.',
                    'Networking Topology.',
                    'Control System Structure Design.',
                    'Cause & Effect.',
                    'Single Line diagram.',
                    'Power Consumers List.',
                    'Cable and termination list.',
                    'Panels GA/IA drawings based on Eplan.',
                    'Explosion proof junction boxes design, procurement and installation.',
                    'FAT / SAT procedures.',
                    'Commissioning procedures.',
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String image,
    required String title,
    required List<String> bulletPoints,
    required bool isImageRight,
  }) {
    Widget textColumn = Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: bulletPoints.map((point) {
                  return _buildBulletPoint(point);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );

    Widget imageColumn = Expanded(
      flex: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );

    return Row(
      children:
          isImageRight ? [textColumn, imageColumn] : [imageColumn, textColumn],
    );
  }

  Widget _buildTwoColumnBulletPoints({required List<String> bulletPoints}) {
    int half = (bulletPoints.length / 2).ceil();
    List<String> leftColumn = bulletPoints.sublist(0, half);
    List<String> rightColumn = bulletPoints.sublist(half);

    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child:
                  Column(children: leftColumn.map(_buildBulletPoint).toList())),
          const SizedBox(width: 40),
          Expanded(
              child: Column(
                  children: rightColumn.map(_buildBulletPoint).toList())),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.blue, size: 18),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 17, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlurredImageSection(
      {required String image, required String text}) {
    return Stack(
      children: [
        Image.asset(image,
            height: 300, width: double.infinity, fit: BoxFit.cover),
        Container(
          height: 300,
          width: double.infinity,
          color: CustomColor.primaryColor.withOpacity(0.7),
          child: Center(
              child: Text(text,
                  style: const TextStyle(fontSize: 26, color: Colors.white))),
        ),
      ],
    );
  }
}

Widget _buildSectionWithImage({
  required String title,
  // required Color backgroundColor,
  required List<String> bulletPoints,
  required String image,
  required bool isImageRight,
}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 800;
      return isSmallScreen
          ? Column(
              children: [
                _buildImageColumn(image),
                _buildTextColumn(title, bulletPoints),
              ],
            )
          : Row(
              children: isImageRight
                  ? [
                      _buildTextColumn(title, bulletPoints),
                      _buildImageColumn(image)
                    ]
                  : [
                      _buildImageColumn(image),
                      _buildTextColumn(title, bulletPoints)
                    ],
            );
    },
  );
}

Widget _buildTextColumn(String title, List<String> bulletPoints) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: CustomColor.primaryColor,
            ),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: bulletPoints.map(_buildBulletPoint).toList(),
          ),
        ],
      ),
    ),
  );
}

/// 🔹 عمود الصورة
Widget _buildImageColumn(String image) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(image,
          fit: BoxFit.contain, width: double.infinity, height: 300),
    ),
  );
}

/// 🔹 تصميم التعدادات بنقطة مميزة
Widget _buildBulletPoint(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        const Icon(Icons.check_circle,
            color: CustomColor.secondaryColor, size: 18),
        const SizedBox(width: 12),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 17))),
      ],
    ),
  );
}
