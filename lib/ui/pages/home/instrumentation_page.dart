import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../../widgets/section_path.dart';
import '../../widgets/silderWidget.dart';
import '../header/header_section_old.dart';

class InstrumentationPage extends StatefulWidget {
  const InstrumentationPage({super.key});

  @override
  State<InstrumentationPage> createState() => _InstrumentationPageState();
}

class _InstrumentationPageState extends State<InstrumentationPage> {
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
            buildSectionPath('Instrumentation Engineering',
                'home / instrumentation engineering'),
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
                child: _buildSectionWithImage(
                  image: 'images/automation/automation2.jpg',
                  title: "Field Instrument Selection & Sizing",
                  bulletPoints: [
                    "Field instrument selection as per the process conditions.",
                    "Flow meters selection and sizing as per process parameters.",
                    "Configuration of field instruments as per manufacturer standards (ENDRESS, EMERSON, KROHNE, WIKA, VEGA).",
                    "Field instruments hook up drawings design.",
                    "Filed instruments procurement (Pressure / Flow/ Temperature/ Level/ PH/ Conductivity/ Turbidity).",
                    "Control valves selection & sizing as per process parameters.",
                    "Filed instruments installation including fittings, impulse lines, valves, manifolds and flow conditioners.",
                    "Orifice plates selection, sizing, and installation.",
                  ],
                  isImageRight: false,
                ),
              ),
            ),
            _buildBlurredImageSection(
              image: 'images/automation/automation3.jpg',
              text: "Site activities including:",
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
                    "Cable trays, cabling.",
                    "Fitting and tubing.",
                    "Termination and loop check.",
                    "Parameterization and calibration.",
                    "Cold & hot commissioning.",
                  ],
                ),
              ),
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
                child: _buildSectionWithImage(
                  image: 'images/automation/automation4.png',
                  title: "Filed instruments sizing:",
                  bulletPoints: [
                    "Flow meters sizing based on process parameters and manufacturer standards.",
                    "Safety valves sizing as per the plants and factories HSE and HAZOP requirements.",
                    "Control valves sizing as per fluid flow conditions.",
                    "Shutdown valves selection and sizing as per the safety and HAZOP requirements to assure the maximum safety for the personnel and assets.",
                  ],
                  isImageRight: true,
                ),
              ),
            ),
            _buildBlurredImageSection(
              image: 'images/automation/automation5.jpg',
              text: "Filed instruments calibration:",
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
                    "Pressure transmitters calibration using international standards.",
                    "Flow transmitters calibration using master meter skid with pressure & temperature compensation.",
                    "Pressure gauges & vacuum gauge calibration.",
                    "Digital pressure indicators & chart recorder calibration.",
                    "Pressure switch & Transmitter with indicator.",
                    "Pressure Safety Relief Valve Testing.",
                    "Digital & dial thermometer calibration.",
                    "Max-min thermometer, freezer & fridge thermometer calibration.",
                    "Temperature data logger calibration.",
                    "Thermo hygrometer Calibration.",
                  ],
                ),
              ),
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
                    "Temperature Sensor with Indicator Calibration",
                    "Temperature Transmitter with Indicator Calibration",
                    "Temperature Chart Recorder Calibration",
                    "Infrared (IR) Thermometer Calibration",
                    "Oven Calibration",
                    "Chiller Calibration",
                    "Freezer Calibration",
                    "Incubator Calibration",
                    "Climatic Chamber Calibration",
                    "Auto Clave Calibration",
                    "Furnace Calibration",
                    "Water bath Calibration",
                    "Oil bath Calibration",
                    "Temperature controller with sensor Calibration",
                    "Food Thermometer",
                    "Pocket Thermometer",
                  ],
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

  Widget _buildTwoColumnBulletPoints({required List<String> bulletPoints}) {
    int half = (bulletPoints.length / 2).ceil();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                  children: bulletPoints
                      .sublist(0, half)
                      .map(_buildBulletPoint)
                      .toList())),
          const SizedBox(width: 40),
          Expanded(
              child: Column(
                  children: bulletPoints
                      .sublist(half)
                      .map(_buildBulletPoint)
                      .toList())),
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
          color: CustomColor.primaryColor.withOpacity(0.8),
          child: Center(
            child: Text(text,
                style: const TextStyle(fontSize: 26, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
