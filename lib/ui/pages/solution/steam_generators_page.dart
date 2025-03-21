import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../header/header_section_old.dart';

class SteamGeneratorsPage extends StatefulWidget {
  SteamGeneratorsPage({super.key});

  @override
  State<SteamGeneratorsPage> createState() => _SteamGeneratorsPageState();
}

class _SteamGeneratorsPageState extends State<SteamGeneratorsPage> {
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
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Steam Generators',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Solution / Steam Generators'),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 200),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // النص
                            Expanded(
                              child: _buildSection(
                                paragraphs: [
                                  'An industrial steam boiler is a crucial piece of equipment used in various industries to generate steam. Steam is typically used for heating, mechanical power generation, and as a raw material in processes like sterilization and distillation. Boilers are essential in industries such as power generation, oil refineries, chemical processing, textiles, food processing, and more, and it includes the following parts:',
                                ],
                                listItems: [
                                  'Burners for fuel, gas or both.',
                                  'Combustion Chamber: The area where the fuel is burned to produce heat.',
                                  'Superheater: to generate superheated high temperature steam steam.',
                                  'Steam Drum.',
                                  'Safety devices including safety chain and valves.',
                                  'Water Circulation System including feed water pumps',
                                  'Economizer: A device used to preheat the feed water for more efficiency.',
                                ],
                              ),
                            ),
                            SizedBox(width: 16), // مسافة بين النص والصورة
                            // الصورة
                            Expanded(
                              child: Image.asset(
                                'images/solution/steam1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // النص
                            Expanded(
                                child:
                                    Image.asset('images/solution/steam2.png')),
                            SizedBox(width: 16), // مسافة بين النص والصورة
                            // الصورة
                            Expanded(
                              child: _buildSection(
                                paragraphs: [
                                  'Our scope of engineering, procurement and installation is covering the following control loops, combustion and safety:'
                                ],
                                listItems: [
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
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Column(
                          children: [
                            _buildSection(
                              paragraphs: [
                                'Our scope of engineering, procurement and installation is covering the following control loops, combustion and safety:'
                              ],
                              listItems: [
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
                            ),
                            SizedBox(height: 10),
                            Image.asset('images/solution/steam2.png'),
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'images/solution/steam3.jpg', // مسار الصورة
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 16), // مسافة بين النص والصورة
                            Expanded(
                              child: _buildSection(
                                title: 'Control System Components:',
                                paragraphs: [],
                                listItems: [
                                  'Pressure Transmitters by SIEMENS.',
                                  'Temperature Transmitters By SIEMENS.',
                                  'Steam Flow Transmitters SIEMENS, Honeywell, Endress.',
                                  'Flame Detection system by Honeywell or Durag.',
                                  'Safety Relief valves By Technical S.R.L',
                                  'Burner Management System by Honeywell, Autoflame or Fireye.',
                                  'PLC Control System by SIEMENS, SCHNEIDER ELECTRIC.',
                                  'SCADA Supervisory Control & data Accusation system by SIEMENS, SCHNEIDER ELECTRIC.',
                                ],
                              ),
                            ),
                          ],
                        ),
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
      padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(0, 3),
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
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.primaryColor,
              ),
            ),
          SizedBox(height: 16), // مسافة بين العنوان والنص
          // الفقرات
          for (var paragraph in paragraphs!)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                paragraph,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),
          // القائمة
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
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
                style: TextStyle(
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
          Text(
            '• ',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
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
