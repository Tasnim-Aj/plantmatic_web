import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../../widgets/image_section.dart';
import '../../widgets/paragraph_section.dart';
import '../../widgets/title.dart';

class FmsPage extends StatefulWidget {
  const FmsPage({super.key});

  @override
  _FmsPageState createState() => _FmsPageState();
}

class _FmsPageState extends State<FmsPage> {
  Map<String, bool> expandedSections = {};

  void toggleText(String key) {
    setState(() {
      if (!expandedSections.containsKey(key)) {
        expandedSections[key] = false;
      }
      expandedSections[key] = !expandedSections[key]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sectionOne(
                expandedSections["tank_gauging"] ?? false,
                () => toggleText("tank_gauging"),
                title: "Tank Gauging:",
                text1:
                    "Tank gauging is the measurement of liquids in large storage tanks with the purpose of quantifying the volume and mass of the product in the tanks. The oil and gas industry generally uses static volumetric assessments of the tank content. This involves level, temperature and pressure measurements. There are different ways of measuring the liquid level and other properties of the liquid. The measurement method depends on the type of tank, the type of liquid and the way the tank is used",
                text2:
                    "Besides precision level gauging, temperature measurements are essential in assessing tank contents accurately. All liquids have a thermal expansion coefficient and proper volume compensation needs to be applied when transferring volumes at different temperature conditions. A pressure measurement of the liquid head is often added to provide a current assessment of the average observed density and to calculate the product mass. Modern tank gauging systems digitize the tank measurement and digitally transmit the tank information to a control room where the liquid volume and mass information is distributed to users of the inventory data.",
                image: 'images/about/tank_1.jpg',
              ),
              const SizedBox(height: 24),
              sectionTwo(
                title: "Why to have tank gauging:",
                text:
                    "The information from a tank gauging system is used for many different purposes. The most common are:",
                list: [
                  'Oil movement and operations',
                  'Inventory control',
                  'Custody transfer',
                  'Loss control and mass balance',
                  'Volume reconciliation',
                  'Overfill prevention',
                  'Leak detection',
                ],
                image: 'images/about/tank_2.jpg',
                isImageRight: false,
              ),
              const SizedBox(height: 24),
              sectionOne(
                expandedSections["custody_transfer"] ?? false,
                () => toggleText("custody_transfer"),
                title: "Custody transfer",
                text1:
                    "When buying and selling large volumes of liquids, tank gauging data serves as the main input for establishing correct invoicing and taxation. Certified tank gauging can provide more accurate transfer assessments compared with metering when performing large transfers such as from a tanker ship to a shore tank. With a certified tank gauging system manual tank surveying can often be omitted. For legal or fiscal custody transfer, the tank gauging system must be certified by international authorities, mainly the International Organization of Legal Metrology (OIML). The system may also be required to have approvals from local metrology entities such as PTB, NMi, LNE or other national institutes.",
                text2:
                    "Custody transfer requires the highest possible accuracy of the tank gauging system. The OIML standard R 85:2008 defines the requirements for tank gauges used for custody transfer.",
                image: "images/about/tank_4.png",
              ),
              const SizedBox(height: 24),
              sectionOne(
                expandedSections["api_standards"] ?? false,
                () => toggleText("api_standards"),
                title: "API Related to the tank Gauging:",
                text1:
                    "The API standards are well known by most people in the petroleum industry. One important characteristic of the API standards is that they provide very useful experience based facts about daily tank gauging problems and how to solve them. They also summarize know-how from practical investigations which have been performed by research departments at major oil companies. Specifically for tank gauging there are some important API standards in MPMS such as: • Chapter 3.1A Standard Practice for the Manual Gauging of Petroleum and Petroleum Products • Chapter 3.1B Standard Practice for Level Measurement of Liquid Hydrocarbons in Stationary Tanks by Automatic Tank Gauging:",
                text2:
                    "Chapter 3.3 Standard Practice for Level Measurement of Liquid Hydrocarbons in Stationary Pressurized Storage Tanks by Automatic Tank Gauging • Chapter 3.6 Measurement of Liquid Hydrocarbons by Hybrid Tank Measurement Systems • Chapter 7 Temperature Determination • Chapter 7.3 Temperature Determination – Fixed Automatic Tank Temperature Systems • API 2350 Overfill Protection for Storage Tanks in Petroleum Facilities",
                image: "images/about/tank_4.png",
                isImageRight: false,
              ),
              const SizedBox(height: 24),
              sectionTwo(
                title: "Tank Gauging components:",
                text: "",
                list: [
                  'Level Transmitter (Radar / Servo)',
                  'Temperature Transmitter: (Multi points).',
                  'Pressure Transmitters on vapor and liquid phases.',
                  'Display and monitoring unit.',
                  'Overfill prevention.',
                  'Inventory control: to calculate volume, mass, corrected volume, density, water level ….. etc.',
                ],
                image: 'images/about/tank_2.jpg',
                isImageRight: true,
              ),
            ],
          ),
        ),
      ),
    );
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
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // if (title != null && title.isNotEmpty)
                    TitleSection(title: title),
                    ParagraphSection(text: text1),
                    if (isExpanded) ParagraphSection(text: text2),
                    const SizedBox(height: 10),
                    _buildCustomContainer(
                      text: isExpanded ? 'Read less' : 'Read more',
                      onTap: onToggle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 40),
            Expanded(child: ImageSection(imagePath: image)),
          ]
        : [
            Expanded(child: ImageSection(imagePath: image)),
            const SizedBox(width: 40),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // if (title != null && title.isNotEmpty)
                    TitleSection(title: title),
                    ParagraphSection(text: text1),
                    if (isExpanded) ParagraphSection(text: text2),
                    const SizedBox(height: 10),
                    _buildCustomContainer(
                      text: isExpanded ? 'Read less' : 'Read more',
                      onTap: onToggle,
                    ),
                  ],
                ),
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
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSection(title: title),
                    // if (text != null && text.isNotEmpty)
                    ParagraphSection(text: text),
                    // if (list.isNotEmpty)
                    BulletPoints(points: list),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 40),
            Expanded(child: ImageSection(imagePath: image)),
          ]
        : [
            Expanded(child: ImageSection(imagePath: image)),
            const SizedBox(width: 40),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSection(title: title),
                    // if (text != null && text.isNotEmpty)
                    ParagraphSection(text: text),
                    // if (list.isNotEmpty)
                    BulletPoints(points: list), // ✅ نفس الفكرة هنا
                  ],
                ),
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
