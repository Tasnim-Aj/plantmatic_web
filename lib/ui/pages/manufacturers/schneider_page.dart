import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/style/custom_color.dart';

import '../../widgets/custom_expansion_tile.dart';

class SchneiderPage extends StatefulWidget {
  const SchneiderPage({super.key});

  @override
  State<SchneiderPage> createState() => _SchneiderPageState();
}

class _SchneiderPageState extends State<SchneiderPage> {
  String selectedApplication = "Oil & Gas Industry";

  final Map<String, Map<String, String>> applicationDetails = {
    "Oil & Gas Industry": {
      "description":
          "Upstream: Automation solutions help monitor and control drilling operations, pump stations, and offshore platforms.\n"
              "Midstream & Downstream: Pipeline management, refinery operations, and process optimization are key areas where Schneider Electric’s automation and SCADA systems are deployed.\n",
      "image": "images/automation/automation1.png",
    },
    "Power Generation and Distribution": {
      "description":
          "Renewable Energy: Schneider Electric’s systems manage wind farms, solar power plants, and hydroelectric power stations, optimizing energy production and grid integration.\n"
              "Smart Grids: EcoStruxure™ Power systems help manage energy distribution networks, enabling real-time monitoring of electricity flow, fault detection, and energy efficiency optimization.\n",
      "image": "images/automation/automation1.png",
    },
    "Water and Wastewater Treatment": {
      "description":
          "Schneider Electric’s solutions help control pumps, filtration, and distribution networks to ensure safe water treatment and efficient operations for municipalities.\n",
      "image": "images/automation/automation1.png",
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              height: 200,
              // width: double.infinity,
              fit: BoxFit.cover,
              'images/manufacturers/schneider.png',
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 250),
              child: Column(
                children: [
                  CustomExpansionTile(
                    title: 'About Schneider',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Schneider Electric is a global leader in digital transformation and automation solutions, specializing in electrical management, process control, and monitoring systems. Their focus is on enhancing energy efficiency, industrial automation, and offering smart solutions for a range of industries. Schneider Electric's SCADA (Supervisory Control and Data Acquisition) systems are part of a comprehensive automation offering that allows users to control and monitor industrial processes remotely, improving efficiency, performance, and safety.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'SCADA System',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "A SCADA system is essential for industries that require real-time monitoring and control of industrial operations. Schneider Electric’s SCADA solutions are flexible, scalable, and can be applied to various industries such as oil and gas, water and wastewater, mining, manufacturing, and energy management. These systems offer integrated data collection, process control, data visualization, and communication across all levels of operation.\n\n"
                          "Schneider Electric’s EcoStruxure™ architecture integrates SCADA systems with IoT devices, cloud computing, and edge analytics to offer more reliable and intelligent monitoring of industrial processes.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          size: 10,
                        ),
                        title: Text("Real-time Monitoring"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          size: 10,
                        ),
                        title: Text("Remote Control"),
                      ),
                      ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          title: Text(
                            "Integrated Data Analysis.",
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          title: Text(
                            "Alarming and Diagnostics.",
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          title: Text(
                            "Historical Data Storage",
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          title: Text(
                            "Multi language",
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10,
                          ),
                          title: Text(
                            "Process Displays as per the P&ID’s , PFD’s, SLD ….",
                          )),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'PLC Systems',
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Programmable Logic Controllers (PLCs) are the backbone of industrial automation. Schneider Electric offers a wide range of PLC systems for different industrial needs, from basic operations to complex, real-time process control. These PLCs offer flexible integration with other automation systems and devices and are highly reliable for mission-critical applications.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        // title: Text(''),
                        subtitle: Text("🔹 Compact and Modular Design.\n"
                            "🔹 High Performance.\n"
                            "🔹 Connectivity: Ethernet-based communication for SCADA & HMI.\n"
                            "🔹 High Level of Security.\n"),
                      ),
                      ListTile(
                        title: Text('Applications'),
                        subtitle: Text(
                            "🔹 Small machines for packaging, textiles, and assembly lines.\n"
                            "🔹 Control of water pumps, HVAC systems\n"
                            "🔹 Building management systems.\n"
                            "🔹 Water Treatment.\n"
                            "🔹 Automated machines.\n"
                            "🔹 Energy Management.\n"
                            "🔹 Food & Beverages.\n"),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Small size PLC systems',
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "The Modicon M241, M221 , M251 is a versatile and powerful mid-range PLC that is optimized for controlling complex machinery and systems in a variety of industries. It provides exceptional flexibility and modularity, with a strong focus on connectivity, including support for Ethernet-based communication protocols such as Modbus TCP/IP, Ethernet/IP, and Profinet.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        // title: Text(''),
                        subtitle: Text("🔹 Compact and Modular Design.\n"
                            "🔹 High Performance.\n"
                            "🔹 Connectivity: Ethernet-based communication for SCADA & HMI.\n"
                            "🔹 High Level of Security.\n"),
                      ),
                      ListTile(
                        title: Text('Applications'),
                        subtitle: Text(
                            "🔹 Small machines for packaging, textiles, and assembly lines.\n"
                            "🔹 Control of water pumps, HVAC systems\n"
                            "🔹 Building management systems.\n"
                            "🔹 Water Treatment.\n"
                            "🔹 Automated machines.\n"
                            "🔹 Energy Management.\n"
                            "🔹 Food & Beverages.\n"),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'High Scale PLC Systems',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "image"
                          "Modicon M580 / M340\n\n"
                          "The Modicon is a high-performance PLC designed for critical industrial applications. It is ideal for industries requiring continuous, real-time monitoring, such as power generation, chemical plants, oil refineries and manufacturing plants.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Key Features',
                    children: [
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Integrated cybersecurity features",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Ethernet-based architecture",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "High performance for large-scale systems",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Scalable and modular",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "High-speed processing",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Advanced I/O configuration',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Full redundant on communication’s, power , CPU’s, I/O.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Professional programming Control Expert LAD/ FBD.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Integration with all SCADA systems.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Integration with all DCS systems.',
                          )),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Networking Devices',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Networking devices are an essential part of Schneider Electric’s automation systems, enabling seamless communication between various components, including sensors, controllers, and SCADA systems. Schneider Electric offers a wide array of networking solutions for automation systems that ensure real-time data exchange, secure communication, and reliability across all levels of industrial operations.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Modicon Ethernet Switches and Routers',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Industrial Ethernet Switches (IES)',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Managed & Unmanaged switches.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'POE Switches.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'IP67 Unmanaged Switches.',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'PROFIBUS DP V1/V0',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Interbus',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'HART',
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            'Industrial Firewalls.',
                          )),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'EcoStruxure™ Systems by Schneider Electric',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "coStruxure™ is Schneider Electric’s open, interoperable, and IoT-enabled architecture and platform that connects everything—from devices and sensors to the cloud—allowing businesses to collect data, analyze it, and take action for better efficiency, sustainability, and innovation.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Key Components of EcoStruxure',
                    children: [
                      ListTile(
                        leading: (Icon(
                          Icons.circle,
                          size: 10,
                        )),
                        title: Text(
                            "EcoStruxure™ Power: Focuses on providing intelligent energy management and automation solutions.\n This system allows for the integration of power distribution, backup power, and energy consumption monitoring in industries."),
                      ),
                      ListTile(
                        leading: (Icon(
                          Icons.circle,
                          size: 10,
                        )),
                        title: Text(
                            "EcoStruxure™ Building: Offers building management solutions, focusing on HVAC, lighting, access control, and other aspects of smart building automation.\n The system helps optimize energy efficiency in commercial buildings and smart homes."),
                      ),
                      ListTile(
                        leading: (Icon(
                          Icons.circle,
                          size: 10,
                        )),
                        title: Text(
                            "EcoStruxure™ Machine: Designed for machine-level automation, this solution optimizes machine performance, enhances energy efficiency,\n and reduces downtime in manufacturing environments."),
                      ),
                      ListTile(
                        leading: (Icon(
                          Icons.circle,
                          size: 10,
                        )),
                        title: Text(
                            "EcoStruxure™ IT: Tailored for data centers and IT environments, it provides cloud connectivity, monitoring, and predictive maintenance tools, offering efficiency and uptime guarantees."),
                      ),
                      ListTile(
                        leading: (Icon(
                          Icons.circle,
                          size: 10,
                        )),
                        title: Text(
                            "EcoStruxure™ Process is a key component of Schneider Electric's EcoStruxure™ architecture.\n It focuses on delivering advanced automation, control, and monitoring solutions specifically tailored for process industries.\n The system is designed to provide smarter, more efficient management of industrial operations through integrated technologies and real-time data insights."),
                      ),
                    ],
                  ),
                  CustomExpansionTile(
                    title: 'Benefits of EcoStruxure™ PROCESS',
                    children: [
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text("Enhanced Efficiency")),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Scalability: Modular architecture.",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Predictive Maintenance.",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Sustainability: It supports green energy solutions and energy-efficient practices.",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Advanced Process Control (APC)",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Distributed Control Systems (DCS): Schneider Electric offers advanced DCS solutions like Modicon PLCs, Triconex Safety Systems, and Foxboro I/A Series for process control",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Batch Control.",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Functional Safety: With Schneider Electric's Triconex Safety Systems, EcoStruxure™ provides robust safety instrumented systems (SIS).\n These systems are essential for maintaining safe operation in hazardous environments such as oil & gas.",
                          )),
                      ListTile(
                          leading: (Icon(
                            Icons.circle,
                            size: 10,
                          )),
                          title: Text(
                            "Energy & Power Management Systems.",
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildSolutionsSection(),
                  const SizedBox(
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
      // width: MediaQuery.of(context).size.width * 0.9,
      child: Center(
        child: Column(
          children: [
            const Text(
              "APPLICATIONS:",
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
                _buildSolutionTab("Oil & Gas Industry", Icons.speed),
                _buildSolutionTab(
                    "Power Generation and Distribution", Icons.timeline),
                _buildSolutionTab(
                    "Water and Wastewater Treatment", Icons.water),
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
    String description =
        applicationDetails[selectedApplication]?["description"] ?? "";
    String image = applicationDetails[selectedApplication]?["image"] ?? "";

    return Container(
      key: ValueKey<String>(selectedApplication),
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
          Image.asset(image),
        ],
      ),
    );
  }
}

Widget _buildParagraphWithImage(String image, String text) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Image.asset(
        image,
        height: 200,
        fit: BoxFit.cover,
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
            // textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ],
  );
}

Widget _buildParagraph(String text) {
  return Column(
    children: [
      Text(
        text,
        style:
            const TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
      ),
    ],
  );
}

Widget _buildBulletList(List<String> items) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: items.map((item) => _buildText(item)).toList());

Widget _buildText(String text) => Row(
      children: [
        Icon(Icons.circle, size: 10, color: Colors.green.shade800),
        const SizedBox(width: 10),
        Text(text,
            style: const TextStyle(
                fontSize: 16, color: Colors.black87, height: 1.5)),
      ],
    );
Widget _buildTitle(String text, Color color) => Row(
      children: [
        Text(text,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: color)),
      ],
    );
