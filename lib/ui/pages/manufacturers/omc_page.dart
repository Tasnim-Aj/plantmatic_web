import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../widgets/custom_expansion_tile.dart';

class OmcPage extends StatefulWidget {
  const OmcPage({super.key});

  @override
  State<OmcPage> createState() => _OmcPageState();
}

class _OmcPageState extends State<OmcPage> {
  String selectedApplication = "Oil and Gas Industry";

  final Map<String, Map<String, String>> omcApplication = {
    "Oil and Gas Industry": {
      "description":
          "OMC globe control valves play a critical role in regulating fluid flow and pressure in pipelines, offshore oil platforms, and refining systems...",
    },
    "Power Generation": {
      "description":
          "In power plants, globe control valves regulate steam, water, and gas flows, ensuring the safe and efficient operation of turbines...",
    },
    "Chemical Processing": {
      "description":
          "In chemical plants, globe control valves are used to regulate the flow of chemicals, ensuring safe and stable reactions...",
    },
    "Water Treatment": {
      "description":
          "In water treatment plants, OMC globe control valves help manage the flow of water, chemicals, and other treatment fluids...",
    },
    "HVAC Systems": {
      "description":
          "Globe control valves are used in HVAC systems to regulate the flow of steam and hot water for heating and cooling...",
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/manufacturers/OMC.jpg',
              height: 200,
            ),
            // const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 250),
              child: Column(
                children: [
                  CustomExpansionTile(
                    title: 'About OMC',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'OMC S.p.A. is a well-established Italian manufacturer specializing in globe control valves designed for precise regulation of fluid flow. The company has built a solid reputation in various industries, including oil and gas, power generation, chemical processing, and water treatment, by offering high-performance valves that ensure reliability, safety, and efficiency in critical applications.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Certifications & Compliance',
                    children: [
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                              'ISO 9001: Quality management systems certification.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                              'ISO 14001: Environmental management certification.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                              'ATEX: Certification for use in explosive environments, for oil & gas industries.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                              'CE Marking: Compliance with European Union standards.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                              'API 602: Certification for valves used in the oil and gas industry, ensuring high performance and reliability under severe conditions.')),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'OMC Globe Control Valves',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'OMC focuses on globe control valves, which are widely used for regulating the flow of fluids in industrial applications. These valves are particularly effective in processes where precise flow control and throttling are required.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Key Features of OMC Globe Control Valves',
                    children: [
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Precise Flow Control.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Smooth Throttling.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('High Performance Under Pressure.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Durability and Reliability.')),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Types of Globe Control Valves by OMC',
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'OMC offers various configurations of globe control valves to meet specific operational needs, including:',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Standard Globe Control Valves.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title:
                              Text('High-Performance Globe Control Valves.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Balanced-Trim Globe Control Valves.')),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text('Anti-Cavitation Globe Control Valves.')),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _buildSolutionsSection(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSolutionsSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.grey.shade100,

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
        children: [
          Text(
            "Applications of OMC Globe Control Valves",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "OMC's globe control valves are integral components in a wide range of industries where precise flow regulation is necessary.\n"
            "The following are key sectors where OMC globe control valves are commonly used:",
            style: TextStyle(fontSize: 16, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: [
              _buildTab("Oil and Gas Industry", '1'),
              _buildTab("Power Generation", '2'),
              _buildTab("Chemical Processing", '3'),
              _buildTab("Water Treatment", '4'),
              _buildTab("HVAC Systems", '5'),
            ],
          ),
          const SizedBox(height: 30),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (widget, animation) {
              return FadeTransition(opacity: animation, child: widget);
            },
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, String number) {
    bool isSelected = selectedApplication == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedApplication = title;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected
              ? CustomColor.primaryColor.withOpacity(0.8)
              : Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(3, 3),
                  ),
                ]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: isSelected
                  ? Colors.white.withOpacity(0.8)
                  : CustomColor.primaryColor.withOpacity(0.3),
              child: Text(
                number,
                style: TextStyle(
                  fontSize: 24,
                  color: isSelected ? CustomColor.primaryColor : Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isSelected
                      ? Colors.white
                      : CustomColor.primaryColor.withOpacity(0.9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    String description =
        omcApplication[selectedApplication]?["description"] ?? "";

    return Container(
      key: ValueKey<String>(selectedApplication),
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
