import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/widgets/custom_expansion_tile.dart';

class WikaPage extends StatefulWidget {
  const WikaPage({super.key});

  @override
  _WikaPageState createState() => _WikaPageState();
}

class _WikaPageState extends State<WikaPage> {
  String selectedSolution = "Pressure Measurement";

  final Map<String, Map<String, String>> solutionDetails = {
    "Pressure Measurement": {
      "description":
          "In the oil & gas industry, accurate pressure measurement is critical to ensure safe, efficient, and effective operations. "
              "WIKA KSR pressure sensors are engineered to withstand extreme conditions in upstream, midstream, and downstream applications. "
              "Whether monitoring pipelines, drilling operations, or refining processes, WIKA KSR pressure sensors provide the reliability and precision needed to optimize performance and enhance safety.",
      "applications":
          "🔹 Drilling Rigs: Monitor the pressure within drilling systems.\n"
              "🔹 Pipeline Systems.\n"
              "🔹 Refining Processes: Measure and control pressure in reactors, distillation columns, and other critical refining equipment.\n"
              "🔹 Offshore Platforms.\n"
    },
    "Temperature Measurement": {
      "description":
          "In industries like Oil & Gas and Power Generation, accurate temperature monitoring is vital to ensure the safety, efficiency, and longevity of critical systems. "
              "WIKA KSR’s temperature sensors are designed to provide precise, reliable measurements under the harshest industrial conditions, ensuring optimal performance and safety in applications such as boilers, turbines, drilling rigs, and pipeline systems.",
      "applications": "🔹 Turbine Monitoring: Temperature sensors are essential for monitoring steam and gas turbines.\n"
          "🔹 Boiler and Heat Exchanger Systems: Precise temperature measurement in boilers, heat exchangers, and condensers.\n"
          "🔹 Cooling Systems: Temperature sensors are used to monitor cooling water and air systems.\n"
          "🔹 Energy Efficiency: By maintaining optimal temperature conditions.\n"
    },
    "Level Measurement": {
      "description":
          "In the oil & gas industry, accurate level measurement is critical to ensure safe, efficient, and effective operations. "
              "WIKA KSR level sensors provide reliable monitoring of liquid, slurry, and solid levels in various applications, such as storage tanks, reactors, and pipelines.",
      "applications": "🔹 Oil Storage Tanks.\n"
          "🔹 Distillation towers level measurement & Control.\n"
          "🔹 Separation and Processing Systems.\n"
          "🔹 Drilling Rigs.\n"
          "🔹 Offshore Platforms.\n"
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x0fffffff),
        // backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'images/manufacturers/wika_logo.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wika Manufacturers',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('Manufacturers  > Wika'),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 250),
                    child: Column(
                      children: [
                        _buildCustomExpansionTile(
                          title: 'Introduction',
                          content:
                              'Oman LNG is committed to the highest possible standards in terms of governance practices, openness/transparency, honesty, accountability, professionalism and duty of care in delivering one\'s responsibilities as prescribed in Oman LNG\'s "Statement of General Business Principles" and "Code of Conduct".',
                        ),
                        // يمكنك إضافة المزيد من Custom ExpansionTiles هنا
                        const CustomExpansionTile(
                          title: 'About WIKA',
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'For over 75 years, WIKA has been a renowned partner and competent specialist for any task in the field of measurement technology. '
                                'With steadily growing efficiency, innovative technologies are applied when developing new products and system solutions.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        const CustomExpansionTile(
                          title: 'Our Success Factors',
                          children: [
                            Text(
                              'The reliability of the products and the readiness to face all challenges of the market have been the key factors for WIKA achieving a leading position in the global market.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const CustomExpansionTile(
                          title: 'Why Choose WIKA?',
                          children: [
                            ListTile(title: Text('✔ Reliable Partner')),
                            ListTile(
                                title: Text('✔ Standard & Custom Solutions')),
                            ListTile(title: Text('✔ Wide Variety of Products')),
                            ListTile(title: Text('✔ Innovative OEM Partner')),
                            ListTile(
                                title: Text(
                                    '✔ Comprehensive Technological Competence')),
                            ListTile(
                                title: Text(
                                    '✔ Certified Quality & High Safety Standards')),
                            ListTile(title: Text('✔ International Approvals')),
                            ListTile(
                                title: Text('✔ Long-term Security of Supply')),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildSolutionsSection(),
                        const SizedBox(
                          height: 20,
                        ),
                        // _buildReliablePartnerSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildSolutionsSection() {
    return Container(
      padding: const EdgeInsets.all(20),
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
      // color: Color(0xFFF2F2F2),
      // width: double.infinity,
      // height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: [
              _buildSolutionTab("Pressure Measurement", Icons.speed),
              _buildSolutionTab("Temperature Measurement", Icons.thermostat),
              _buildSolutionTab("Level Measurement", Icons.water),
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
    );
  }

  Widget _buildSolutionTab(String title, IconData icon) {
    bool isSelected = selectedSolution == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSolution = title;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade700 : Colors.blue.shade100,
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
                color: isSelected ? Colors.white : Colors.blue, size: 24),
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
        solutionDetails[selectedSolution]?["description"] ?? "";
    String applications =
        solutionDetails[selectedSolution]?["applications"] ?? "";

    return Container(
      key: ValueKey<String>(selectedSolution),
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
          const SizedBox(height: 30),
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
      ),
    );
  }
}

Widget _buildCustomExpansionTile(
    {required String title, required String content}) {
  return Card(
    elevation: 2, // ظل خفيف
    margin: const EdgeInsets.only(bottom: 16), // مسافة بين العناصر
    child: ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Fedra Sans',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.blue[800], // لون النص
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            style: const TextStyle(
              fontFamily: 'Fedra Sans',
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Color.fromRGBO(32, 32, 32, 1),
              height: 1.5,
            ),
          ),
        ),
      ],
    ),
  );
}
