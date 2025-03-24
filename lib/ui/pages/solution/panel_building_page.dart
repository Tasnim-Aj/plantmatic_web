import 'package:flutter/material.dart';

import '../../style/custom_color.dart';

class PanelBuildingPage extends StatelessWidget {
  const PanelBuildingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.only(left: 100, right: 100, top: 40),
      children: [
        sectionTwo(
          title: "Steam Generators",
          text:
              "An industrial steam boiler is a crucial piece of equipment used in various industries to generate steam. Steam is typically used for heating, mechanical power generation, and as a raw material in processes like sterilization and distillation. Boilers are essential in industries such as power generation, oil refineries, chemical processing, textiles, food processing, and more, and it includes the following parts:",
          list: [
            'Burners for fuel, gas or both.',
            'Combustion Chamber: The area where the fuel is burned to produce heat.',
            'Superheater: to generate superheated high temperature steam steam.',
            'Steam Drum.',
            'Safety devices including safety chain and valves.',
            'Water Circulation System including feed water pumps',
            'Economizer: A device used to preheat the feed water for more efficiency.',
          ],
          image: 'images/about/tank_1.jpg',
          isImageRight: true,
        ),
        const SizedBox(
          height: 20,
        ),
        sectionTwo(
          title:
              "Our scope of engineering, procurement and installation is covering the following control loops, combustion and safety:",
          text: "",
          list: [
            'Steam Pressure Control loop.',
            'Water Drum level control including feedback and feedforward control.',
            'Superheated steam temperature control.',
            'Fuel / Air ratio control through the BMS burner Management System.',
            'Exhaust measurement and control CO2, O2.',
            'Safety chain interlock for chamber doors, Low water cutoff LWCO.',
            'Steam pressure safety valves sizing and testing.',
            'Efficiency calculation as per the heat value of the fuel or gas and the heat value of the generated steam.',
            'Flame detection and interlock with the BMS.',
            'Deaerator level control.',
            'Feed water pumps control.',
            'Fans and air dampers control by using VFD.',
            'Full SCADA monitoring system for the steam boilers safe operation.',
            'ESD safety system SIL2 : for the safety interlock, BMS, safety chain.',
          ],
          image: 'images/about/tank_2.jpg',
          isImageRight: false,
        ),
        const SizedBox(
          height: 20,
        ),
        sectionTwo(
          title: "Control System Components:",
          text: "",
          list: [
            'Pressure Transmitters by SIEMENS.',
            'Temperature Transmitters By SIEMENS.',
            'Steam Flow Transmitters SIEMENS, Honeywell, Endress.',
            'Flame Detection system by Honeywell or Durag.',
            'Safety Relief valves By Technical S.R.L',
            'Burner Management System by Honeywell, Autoflame or Fireye.',
            'PLC Control System by SIEMENS, SCHNEIDER ELECTRIC.',
            'SCADA Supervisory Control & data Accusation system by SIEMENS, SCHNEIDER ELECTRIC.',
          ],
          image: 'images/about/tank_4.png',
          isImageRight: true,
        )
      ],
    ));
  }
}

Widget sectionOne(
  bool isExpanded,
  VoidCallback onToggle, {
  required String title,
  required String text1,
  required String text2,
  required String image,
  bool isImageRight = true,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: isImageRight
        ? [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (title != null && title.isNotEmpty)
                  SectionTitle(title: title),
                  SectionParagraph(text: text1),
                  if (isExpanded) SectionParagraph(text: text2),
                  const SizedBox(height: 10),
                  _buildCustomContainer(
                    text: isExpanded ? 'Read less' : 'Read more',
                    onTap: onToggle,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 40),
            Expanded(child: SectionImage(imagePath: image)),
          ]
        : [
            Expanded(child: SectionImage(imagePath: image)),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (title != null && title.isNotEmpty)
                  SectionTitle(title: title),
                  SectionParagraph(text: text1),
                  if (isExpanded) SectionParagraph(text: text2),
                  const SizedBox(height: 10),
                  _buildCustomContainer(
                    text: isExpanded ? 'Read less' : 'Read more',
                    onTap: onToggle,
                  ),
                ],
              ),
            ),
          ],
  );
}

Widget sectionTwo({
  required String title,
  required String text,
  required List<String> list,
  required String image,
  bool isImageRight = true,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: isImageRight
        ? [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: title),
                  // if (text != null && text.isNotEmpty)
                  SectionParagraph(text: text),
                  // if (list.isNotEmpty)
                  BulletPoints(points: list),
                ],
              ),
            ),
            const SizedBox(width: 40),
            Expanded(child: SectionImage(imagePath: image)),
          ]
        : [
            Expanded(child: SectionImage(imagePath: image)),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: title),
                  // if (text != null && text.isNotEmpty)
                  SectionParagraph(text: text),
                  // if (list.isNotEmpty)
                  BulletPoints(points: list), // ✅ نفس الفكرة هنا
                ],
              ),
            ),
          ],
  );
}

Widget _buildCustomContainer(
    {required String text, required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CustomColor.primaryColor,
      ),
      height: 40,
      width: 120,
      child: Center(
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue[800],
        ),
      ),
    );
  }
}

// 📌 مكون الفقرة
class SectionParagraph extends StatelessWidget {
  final String text;
  const SectionParagraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, height: 1.5, color: Colors.grey[700]),
      ),
    );
  }
}

class SectionImage extends StatelessWidget {
  final String imagePath;
  const SectionImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ));
  }
}

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
