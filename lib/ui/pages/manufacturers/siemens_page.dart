import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../widgets/custom_expansion_tile.dart';

class SiemensPage extends StatefulWidget {
  const SiemensPage({super.key});

  @override
  State<SiemensPage> createState() => _SiemensPageState();
}

class _SiemensPageState extends State<SiemensPage> {
  String selectedFild = "Pressure Measurement";

  final Map<String, Map<String, String>> fieldDetails = {
    "Pressure Measurement": {
      "description": "SITRANS P pressure transmitters are a complete family of measuring instruments for measuring gauge, differential, and absolute pressure that includes a range of performance values, load capacities, and materials. In addition to high measuring accuracy and ruggedness, the modular system features superb operating convenience and functionality as well as an ideal safety concept. Whether it’s international approvals or industry standards, our transmitters meet the challenges presented by increasingly complex tasks in the process industries.\n\n"
          "Every process in your plant brings with it specific requirements. That’s why SITRANS P pressure transmitters are your complete range of measuring products with different levels of performance, varying load capacities and types of materials. From hygienic requirements to heavy industry in harsh conditions, SITRANS P has the right instrument for every application.\n\n"
          "For gases, liquids, and paste-like media, the gauge pressure, absolute pressure, and differential pressure must be measured constantly to detect values that are too low or a potential overload. Whether for pipelines, valves, or reactors, the SITRANS P transmitter family offers the right solution for every application.\n\n"
          "The most important factor in selecting the right pressure transmitter is the required accuracy of the measuring range. SITRANS P transmitters offer a variety of choices from 0.04% to 0.3%. They are suitable for safety-related applications, with certifications according to SIL2 and SIL2/3. Numerous bus systems for communication are also supported, including HART®, PROFIBUS PA, and FOUNDATION Fieldbus. In addition, the transmitters have all the most current approvals and certificates.",
    },
    "Flow Measurement": {
      "description":
          "Siemens Flow Transmitters are cutting-edge devices designed for accurate flow measurement and monitoring in various industries, including oil & gas, power generation, chemical processing, and water treatment. These transmitters are an essential part of any automated system, offering real-time flow data that ensures efficient process control, enhances safety, and supports operational optimization.\n\n"
              "Siemens offers a wide range of flow transmitters, including magnetic, differential pressure, ultrasonic, and vortex flow transmitters, each designed to meet specific application needs. With their advanced technology, Siemens flow transmitters deliver high precision, reliability, and robustness even in harsh and demanding environments.\n",
      "applications":
          "🔹 Oil & Gas: Precise measurement of crude oil and natural gas flow.\n"
              "🔹  Chemical Industry: Measurement of chemicals, viscous liquids, and gases for accurate blending and mixing.\n"
              "🔹 Food & Beverage: Ensures accurate measurement for batching and ingredient blending.\n",
      "measuring":
          "🔹Differential pressure transmitters based on orifice plates.\n"
              "🔹Coriolis Flow Transmitters with Custody Transfer \n"
              "🔹Ultrasonic Flow Transmitters for Liquids & Gasses.\n"
              "🔹Vortex Flow transmitters.\n"
              "🔹Variable Area Flow meters.\n"
              "🔹Open Channels Flow transmitters.",
    },
    "Level Measurement": {
      "description": "Siemens Level Transmitters are advanced instruments designed to provide accurate, reliable, and continuous measurement of material levels in various industrial applications. These transmitters are essential for controlling and optimizing processes across industries such as oil & gas, power generation, water treatment, chemical processing, and food & beverage.\n\n"
          "Siemens offers a broad range of level measurement technologies, including Radar, Ultrasonic, Hydrostatic, and Capacitive transmitters. Each technology is uniquely suited for different types of media and environmental conditions, ensuring that every level measurement need is met with precision and dependability. Whether you're measuring liquids, solids, or slurries, Siemens provides the ideal solution to enhance your operations.\n\n"
          "Take your level measurement to the next level – with a great portfolio of level measurement devices for every application. Accurate, rugged, and reliable. From contacting to non-contacting devices. With digitalization that unlocks process mastery while saving resources.\n\n"
          "contacting to non-contacting devices. With digitalization that unlocks process mastery while saving resources:",
      "other": "🔹 Interface level measurement\n"
          "🔹Radar Level Measurements with up to 1mm accuracy.\n"
          "🔹Capacitive Level Sensors\n"
          "🔹Capacitance point level switch\n"
          "🔹Vibronic Point Level Switch for solids tanks & Silos.\n"
          "🔹Guided Wave Radar.\n"
          "🔹Hydrostatic Level Measurements.\n",
    },
    "Temperature Measurement": {
      "description": "Siemens Temperature Transmitters are advanced devices used to convert temperature readings from sensors into a standard signal that can be processed by control systems. These transmitters are designed to offer high accuracy, reliability, and flexibility, ensuring precise temperature measurement in a wide range of industrial applications.\n\n"
          "Temperature transmitters from Siemens are equipped with advanced technologies and diagnostics, making them ideal for use in harsh environments, critical processes, and sensitive applications across industries such as oil & gas, power generation, chemical processing, food & beverage, and more.\n\n"
          "Siemens temperature transmitters are compatible with various temperature sensors such as RTDs (Resistance Temperature Detectors), thermocouples, and thermistors. They offer easy integration, minimal maintenance, and long-lasting performance.\n\n"
          "Covering wide range of industries by the following measuring principles:",
      "other": "🔹 RTD (Resistance Temperature Detector) Transmitters\n"
          "🔹 Thermocouple Transmitters.\n"
          "🔹 Thermistor Transmitters.\n"
          "🔹 HART-Compatible Temperature Transmitters.\n"
          "🔹 Filed & Rail transmitters.\n"
          "🔹 Pyrometers for steel & Cement industry.\n"
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              height: 200,
              'images/manufacturers/siemens_logo.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 250),
              child: Column(
                children: [
                  CustomExpansionTile(
                    title: 'About SIEMENS',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'In the highly demanding Oil & Gas and Power Generation industries, precision, reliability, and durability are crucial for monitoring and controlling critical processes. SIEMENS Field Instrumentation products are engineered to provide the highest level of accuracy and performance, even in the most challenging environments. These advanced instruments are used for measuring pressure, level, flow, and temperature, ensuring that operations run efficiently, safely, and with minimal downtime.\n\n'
                          'Siemens Process Instrumentation offers you innovative, single-source measurement solutions to increase plant efficiency and enhance product quality. Our intelligent instruments are also designed for seamless interplay with the larger world of industrial automation and control systems – enabling greater process transparency and smarter decisions for your business.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'SIEMENS VFD’s',
                    children: [
                      Text(
                        'Siemens VFDs are highly regarded for their reliability, innovation, and ease of integration into complex systems. They are commonly used in applications where motor speed control and energy savings are essential.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Key Features of Siemens VFDs',
                    children: [
                      ListTile(title: Text('🔹 Energy Efficiency')),
                      ListTile(title: Text('🔹 Precise Speed Control')),
                      ListTile(
                          title: Text(
                              '🔹 Compact and Robust Design: for harsh and normal operation conditions.')),
                      ListTile(
                          title: Text(
                              '🔹 Flexibility and Scalability to match small and high-capacity plants.')),
                      ListTile(
                          title: Text(
                              '🔹 User-Friendly Interface: one minute setup.')),
                      ListTile(
                          title: Text(
                              '🔹 Advanced Protection Features: such as overload, short circuit and son on..')),
                      ListTile(
                          title: Text(
                              '🔹 Communication Capabilities: PROFINET, Ethernet/IP, and Modbus.')),
                      ListTile(
                          leading: Icon(Icons.access_time_filled_rounded),
                          title: Text(
                              '🔹 Regenerative Energy Recovery: contributing to energy savings and reducing system load.')),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Applications of Siemens VFDs',
                    children: [
                      ListTile(
                          title: Text(
                              '🔹 Pumps: for speed control and reduce wear & tear on gearboxes.')),
                      ListTile(
                          title: Text(
                              '🔹 Fans and Ventilation: To match the airflow requirements & reduce energy cost.')),
                      ListTile(
                          title: Text(
                              '🔹 Conveyors: By varying the speed of the conveyor based on the load and process requirements.')),
                      ListTile(
                          title: Text(
                              '🔹 Compressors: help control the speed of compressors used in refrigeration systems, air conditioning, and pneumatic tools.')),
                      ListTile(
                          title: Text(
                              '🔹 Automated Manufacturing: to control precisely the speed of motors in robots, assembly lines, and CNC machines.')),
                      ListTile(
                          title: Text(
                              '🔹 Elevators and Escalators: by adjusting speed according to demand.')),
                      ListTile(
                          title: Text(
                              '🔹 HVAC Systems: Siemens VFDs control motors in HVAC applications, including chillers, air handling units, and cooling towers.')),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildSolutionsSection(),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
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
      // width: MediaQuery.of(context).size.width * 0.9,
      // height: 1000,
      child: Center(
        child: Column(
          children: [
            const Text(
              "Fild Instruments:",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColor.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.center,
              children: [
                _buildSolutionTab("Pressure Measurement", Icons.speed),
                _buildSolutionTab("Flow Measurement", Icons.timeline),
                _buildSolutionTab("Level Measurement", Icons.water),
                _buildSolutionTab("Temperature Measurement", Icons.thermostat),
              ],
            ),
            const SizedBox(height: 30),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (widget, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: widget,
                );
              },
              child: _buildSolutionContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSolutionTab(String title, IconData icon) {
    bool isSelected = selectedFild == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFild = title;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? CustomColor.primaryColor : Colors.blue.shade100,
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
            Icon(icon,
                color: isSelected ? Colors.white : CustomColor.primaryColor,
                size: 24),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.blue.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSolutionContent() {
    String description = fieldDetails[selectedFild]?["description"] ?? "";
    String applications = fieldDetails[selectedFild]?["applications"] ?? "";
    String measuring = fieldDetails[selectedFild]?["measuring"] ?? "";
    String other = fieldDetails[selectedFild]?["other"] ?? "";

    return Container(
      key: ValueKey<String>(selectedFild),
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
              offset: const Offset(0, 3)),
        ],
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
          if (applications.isNotEmpty) ...[
            Text(
              "Applications: ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              applications,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
          if (measuring.isNotEmpty) ...[
            Text(
              "Measuring principles :",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              measuring,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
          if (other.isNotEmpty) ...[
            const SizedBox(height: 15),
            Text(
              other,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ],
      ),
    );
  }
}

Widget _buildTitle(String text, Color color) => Text(text,
    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color));
Widget _buildText(String text) => Row(
      children: [
        Icon(Icons.circle, size: 10, color: Colors.green.shade800),
        const SizedBox(width: 10),
        Text(text,
            style: const TextStyle(
                fontSize: 16, color: Colors.black87, height: 1.5)),
      ],
    );
Widget _buildSection(String title, String content) => Column(children: [
      _buildTitle(title, CustomColor.primaryColor),
      const SizedBox(height: 10),
      _buildText(content)
    ]);
Widget _buildBulletList(List<String> items) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: items.map((item) => _buildText(item)).toList());
