import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../header/header_section_old.dart';

class TankGaugingPage extends StatefulWidget {
  const TankGaugingPage({super.key});

  @override
  State<TankGaugingPage> createState() => _TankGaugingPageState();
}

class _TankGaugingPageState extends State<TankGaugingPage> {
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
      body: Column(
        children: [
          HeaderSection(
            onHomeTap: () => _scrollToSection(_homeKey),
            onAboutTap: () => _scrollToSection(_aboutKey),
            onManufacturersTap: () => _scrollToSection(_manufacturersKey),
            onSolutionTap: () => _scrollToSection(_solutionKey),
            onReferenceTap: () => _scrollToSection(_referencesKey),
            // onContactTap: () => _scrollToSection(_contactKey),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tank Gauging',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Solution / Tank Gauging'),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 200),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: _buildSection(
                                title: 'Tank Gauging',
                                paragraphs: [
                                  "Tank gauging is the measurement of liquids in large storage tanks with the purpose of quantifying the volume and mass of the product in the tanks. The oil and gas industry generally uses static volumetric assessments of the tank content. This involves level, temperature and pressure measurements. There are different ways of measuring the liquid level and other properties of the liquid. The measurement method depends on the type of tank, the type of liquid and the way the tank is used",
                                ],
                                listItems: [],
                                finalParagraph:
                                    "Besides precision level gauging, temperature measurements are essential in assessing tank contents accurately. All liquids have a thermal expansion coefficient and proper volume compensation needs to be applied when transferring volumes at different temperature conditions. A pressure measurement of the liquid head is often added to provide a current assessment of the average observed density and to calculate the product mass. Modern tank gauging systems digitize the tank measurement and digitally transmit the tank information to a control room where the liquid volume and mass information is distributed to users of the inventory data.",
                              ),
                            ),
                            const SizedBox(width: 16), // مسافة بين النص والصورة
                            Expanded(
                              child: Image.network(
                                'https://i.ibb.co/WpgdGRZ5/curso-rosemount-tank-gauging-esquema-scaled.jpg',
                                fit: BoxFit.cover,
                              ),
                              // child: Image.asset(
                              //   'images/solution/tank_1.jpg',
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 48),
                        // Divider(
                        //   color: Colors.grey.shade200,
                        // ),
                        const SizedBox(height: 48),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.network(
                                'https://i.ibb.co/whPNw4tM/engineer-s-guide-to-tank-gauging-en-175314.jpg',
                              ),
                              // Image.asset('images/solution/tank_2.jpg'),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildSection(
                                title: 'Why to have tank gauging',
                                paragraphs: [
                                  'The information from a tank gauging system is used for many different purposes. The most common are:',
                                ],
                                listItems: [
                                  'Oil movement and operations',
                                  'Inventory control',
                                  'Custody transfer',
                                  'Loss control and mass balance',
                                  'Volume reconciliation',
                                  'Overfill prevention',
                                  'Leak detection',
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildSection(
                          title: 'Custody transfer',
                          paragraphs: [
                            'When buying and selling large volumes of liquids, tank gauging data serves as the main input for establishing correct invoicing and taxation. Certified tank gauging can provide more accurate transfer assessments compared with metering when performing large transfers such as from a tanker ship to a shore tank. With a certified tank gauging system manual tank surveying can often be omitted. For legal or fiscal custody transfer, the tank gauging system must be certified by international authorities, mainly the International Organization of Legal Metrology (OIML). The system may also be required to have approvals from local metrology entities such as PTB, NMi, LNE or other national institutes.'
                          ],
                          finalParagraph:
                              'Custody transfer requires the highest possible accuracy of the tank gauging system. The OIML standard R 85:2008 defines the requirements for tank gauges used for custody transfer.',
                          listItems: [],
                        ),
                        const SizedBox(height: 24),
                        _buildSection(
                          title: 'API Related to the tank Gauging',
                          paragraphs: [
                            'The API standards are well known by most people in the petroleum industry. One important characteristic of the API standards is that they provide very useful experience based facts about daily tank gauging problems and how to solve them. They also summarize know-how from practical investigations which have been performed by research departments at major oil companies. Specifically for tank gauging there are some important API standards in MPMS such as: • Chapter 3.1A Standard Practice for the Manual Gauging of Petroleum and Petroleum Products • Chapter 3.1B Standard Practice for Level Measurement of Liquid Hydrocarbons in Stationary Tanks by Automatic Tank Gauging',
                          ],
                          finalParagraph:
                              'Chapter 3.3 Standard Practice for Level Measurement of Liquid Hydrocarbons in Stationary Pressurized Storage Tanks by Automatic Tank Gauging • Chapter 3.6 Measurement of Liquid Hydrocarbons by Hybrid Tank Measurement Systems • Chapter 7 Temperature Determination • Chapter 7.3 Temperature Determination – Fixed Automatic Tank Temperature Systems • API 2350 Overfill Protection for Storage Tanks in Petroleum Facilities',
                          listItems: [],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: _buildSection(
                                title: 'Tank Gauging components',
                                paragraphs: [],
                                listItems: [
                                  'Level Transmitter (Radar / Servo)',
                                  'Temperature Transmitter: (Multi points).',
                                  'Pressure Transmitters on vapor and liquid phases.',
                                  'Display and monitoring unit.',
                                  'Overfill prevention.',
                                  'Inventory control: to calculate volume, mass, corrected volume, density, water level ….. etc.',
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Image.network(
                                'https://i.ibb.co/XrdZgM5b/prod-rmt-tank-storage-floating-roof-monitoring-data-6751870.png',
                              ),
                              // Image.asset('images/solution/tank_3.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // دالة مساعدة لإنشاء قسم
  Widget _buildSection({
    String? title,
    required List<String>? paragraphs,
    required List<String> listItems,
    String? finalParagraph,
  }) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
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
          // العنوان
          if (title != null)
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.primaryColor,
              ),
            ),
          const SizedBox(height: 16), // مسافة بين العنوان والنص
          // الفقرات
          for (var paragraph in paragraphs!)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                paragraph,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),
          // القائمة
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (var item in listItems) _buildListItem(item),
            ],
          ),
          // الفقرة النهائية (إذا كانت موجودة)
          if (finalParagraph != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                finalParagraph,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // دالة مساعدة لإنشاء عناصر القائمة
  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
