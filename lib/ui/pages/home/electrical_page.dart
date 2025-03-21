import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/widgets/section_path.dart';

import '../../style/custom_color.dart';
import '../../widgets/silderWidget.dart';
import '../header/header_section_old.dart';

class ElectricalEngineeringPage extends StatefulWidget {
  ElectricalEngineeringPage({super.key});

  @override
  State<ElectricalEngineeringPage> createState() =>
      _ElectricalEngineeringPageState();
}

class _ElectricalEngineeringPageState extends State<ElectricalEngineeringPage> {
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
      backgroundColor: const Color(0xFFFFFFFF),
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
                'Electrical Engineering', 'home / electrical engineering'),
            Container(
              height: 400,
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
                  title: "Low & Medium Voltage Solutions",
                  icon: Icons.electrical_services,
                  bulletPoints: [
                    "Low Voltage switchgear Panels design & assembling as per the international standards IEC, IEEE.",
                    "Power management system (PMS).",
                    "Medium voltage switchgear & protection relays procurement, configuration & testing.",
                  ],
                  image: "images/automation/automation1.png",
                  isImageRight: false,
                ),
              ),
            ),
            Container(
              height: 400,
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
                  title: "Motor & Drive Solutions",
                  icon: Icons.settings_input_component,
                  // backgroundColor:
                  // CustomColor.secondaryColor.withOpacity(0.2),
                  bulletPoints: [
                    "Low Voltage AC drives procurement, installation and commissioning.",
                    "Medium voltage AC drives procurement, installation and commissioning.",
                    "Solar pumps devices.",
                    "Soft starter for both low and medium voltage motors.",
                    "Wide range of AC induction motors importation and installation.",
                  ],
                  image: "images/automation/automation2.jpg",
                  isImageRight: true,
                ),
              ),
            ),
            Container(
              height: 400,
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
                  title: "Electrical Distribution Systems",
                  icon: Icons.power,
                  // backgroundColor: const Color(0xFFF2F2F2),
                  bulletPoints: [
                    "Power distribution panels assembling.",
                    "Motor Control Centers (MCC) design, assembly, testing & commissioning  in addition to the interface with the PLC control panels.",
                    "SMART MCC panels design & programming.",
                    "Explosion proof electrical distribution panels for hazardous areas.",
                  ],
                  image: "images/automation/automation5.jpg",
                  isImageRight: false,
                ),
              ),
            ),
            Container(
              height: 400,
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
                  title: "High Voltage Equipment",
                  icon: Icons.flash_on,
                  // backgroundColor: Colors.green.shade100, // أخضر فاتح
                  bulletPoints: [
                    "AIS, GIS, VCB selection, adaptation and installation.",
                    "Dry & oil immersed transformers procurement & installation.",
                    "Ring main unit procurement, installation and configuration.",
                  ],
                  image: "images/automation/automation4.png",
                  isImageRight: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionWithImage({
    required String title,
    required IconData icon,
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
                  _buildTextColumn(title, icon, bulletPoints),
                ],
              )
            : Row(
                children: isImageRight
                    ? [
                        _buildTextColumn(title, icon, bulletPoints),
                        _buildImageColumn(image)
                      ]
                    : [
                        _buildImageColumn(image),
                        _buildTextColumn(title, icon, bulletPoints)
                      ],
              );
      },
    );
  }

  Widget _buildTextColumn(
      String title, IconData icon, List<String> bulletPoints) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(icon, color: CustomColor.primaryColor, size: 40),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ],
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
}
