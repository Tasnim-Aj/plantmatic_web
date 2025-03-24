import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../widgets/custom_expansion_tile.dart';

class VegaPage extends StatefulWidget {
  const VegaPage({super.key});

  @override
  State<VegaPage> createState() => _VegaPageState();
}

class _VegaPageState extends State<VegaPage> {
  String selectedType = "Radar Level Transmitters (VEGAWAVE)";

  final Map<String, Map<String, dynamic>> typeOfVega = {
    "Radar Level Transmitters (VEGAWAVE)": {
      "description":
          "Radar level transmitters use electromagnetic waves to measure the level of a medium. These transmitters work by emitting radar waves toward the surface of the material, and the time it takes for the waves to reflect back to the transmitter determines the distance to the surface.\n",
      "features":
          "🔹Suitable for a wide range of applications, including those with extreme temperatures, pressures, and dusty or vapor-laden environments.\n"
              "🔹Non-contact measurement ensures no wear and tear on the instrument.\n"
              "🔹High accuracy and reliability.\n"
              "🔹Can be used for both liquid and solid measurements.\n",
    },
    "Ultrasonic Level Transmitters (VEGAPULS)": {
      "description":
          "Ultrasonic level transmitters measure the distance to the surface of the material by emitting sound waves and measuring the time taken for the wave to reflect back from the surface.\n",
      "features": "🔹 Ideal for applications where non-contact measurement is essential.\n"
          "🔹 Suitable for applications where medium density is low and accuracy is important.\n"
          "🔹 Can be used in both open tanks and closed systems.\n"
          "🔹 Works well in measuring solid or liquid levels in a wide range of industries.\n",
    },
    "Capacitive Level Transmitters (VEGACAP)": {
      "description":
          "Capacitive level transmitters use changes in capacitance between two electrodes (or between a single electrode and the material) to detect the level. These are often used in granular materials or liquids.\n",
      "features": "🔹 High sensitivity to changes in the level.\n"
          "🔹Suitable for powder, granular, or liquid measurements.\n"
          "🔹Provides continuous level measurement with excellent precision.\n"
          "🔹Cost-effective and robust for industrial applications.\n",
    },
    "Tuning Fork Level Switches (VEGAPOINT)": {
      "description":
          "Tuning fork level switches operate based on the resonant frequency of the fork, which changes when the fork is submerged in the medium. They are commonly used for point level detection in liquids and solids.\n",
      "features": "🔹 Simple to install and maintain.\n"
          "🔹 Suitable for bulk solids, powders, or liquids.\n"
          "🔹 Provides reliable point level detection for high or low-level limits.\n",
    },
    "Vibrating Level Switches (VEGAVIB)": {
      "description":
          "Vibrating level switches work by measuring changes in vibration frequency caused by contact with a medium. These are primarily used for point level detection of powders, solids, and liquids.\n",
      "features": "🔹 Can detect high and low-level conditions reliably.\n"
          "🔹 Ideal for applications with challenging media, including powders and slurries.\n"
          "🔹 Reliable, even in noisy or fluctuating conditions.\n",
      "applications": {
        "Crude Oil and Product Tanks": {
          "application":
              "Radar Level Transmitters: Used for continuous level measurement in large crude oil storage tanks. These transmitters work reliably even in challenging environments, such as tanks with vapor or foaming conditions./n",
        },
        "Separation Units": {
          "application":
              "The separator vessel contains a mixture of crude oil, gas, water and sand extracted from the subsea well. Precise monitoring of these multiple separation interfaces and emulsions play a vital role in ensuring the quality of the oil separator for separation. Exact control of interfaces, level and pressure allows optimum utilization of the oil separator and increases the effectiveness of the entire asset.\n",
        },
        "Level Measurement of Distillation Column": {
          "application":
              "Accurate level control of the distillation unit ensures product quality of the hydrocarbon at the different cuts, but this is made difficult due to hot liquids flashing, buildup and high temperature. Even through process changes reliable level measurement and point level detection are required.\n"
                  "Process Temperature up to 400C, measuring without moving parts.\n",
        },
        "Level Measurement of Distillation Column ????": {
          "application":
              "Level measurement of crude and bulk liquids storage tanks in a refinery is necessary for inventory management and overspill protection. Multiple measurement devices can fit into a single process fitting for both inventory measurement and overfill protection due to the safety requirements of the refineries.\n",
          "industry": "🔹 Measuring range up to 120 meters.\n"
              "🔹 Process Temperature up to 450 C.\n"
              "🔹 Best accuracy in the market 1 mm.\n"
              "🔹 Supporting Profibus and new generation Ethernet APL\n",
        },
        "Interface Measurement in the desalter": {
          "application":
              "To maximize efficiency of the electrostatic grid as it removes contaminants within second and third stage desalters, a crucial point of control is to maintain the oil and water interface just below this grid. Reliable measurement of this level protects the grid from shorting out on the water as well as increasing efficiency of the unit, which ensures the quality of the feed moving into the next process unit.\n",
          "industry": "🔹 Oil/water interface, changing density.\n"
              "🔹 2mm accuracy.\n"
              "🔹 Process Temperature up to 200C\n"
              "🔹 Cable, Rod, Coax and PFA coated cable versions.\n"
              "🔹 316L / Alloy C22, Alloy C276, Duplex for corrosive installation.\n",
        },
        "Level Measurement for Boiler Steam Drum": {
          "application":
              "High process pressures and a highly compressed vapor phase are the normal operating conditions inside boilers. The size of the steam generator is what determines the quantity of saturated steam that can be fed into a heat exchanger. Reliable control of the water level and limitation of high and low water levels are therefore extremely important. In power plants boilers are governed by the steam pressure and the process temperature.\n",
          "industry": "🔹 Measuring the condensate level.\n"
              "🔹 Process Temperature up to 400C\n"
              "🔹 SIL 2 according to IEC 61508.\n"
              "🔹 Very critical applications for steam boilers in Food, Power Generation, oil refineries and chemical industries.\n"
        },
        "Level detection of sludge and water": {
          "application":
              "Sewage treatment plants around the world rely on VEGA measurement technology because they place great importance on high plant availability, maintenance-free operation and accurate measurement data, as the basis for automatic control of the various process stages.\n"
                  "The digested sludge is dewatered prior to drying in centrifuges or filter presses. The sludge liquor thus obtained passes through the cleaning process of the WWTP once again. A level detector controls the pumps in the filter water tank to prevent overfilling. The discharge of the dewatered sludge is controlled by a point level sensor.\n",
          "industry": "🔹 Inlet pumping station.\n"
              "🔹 Additives stage.\n"
              "🔹 Sludge treatment.\n"
              "🔹 Digester & biogas storage facility.\n"
              "🔹 Filtration.\n"
              "🔹 Primary & secondary clarifier.\n",
        },
        "Level measurement in clinker silos": {
          "application":
              "Cement is one of the most important raw materials for the construction and expansion of infrastructure. The processes in cement production require a high level of productivity and efficiency. VEGA sensors measure reliably in all areas of this industry: from the quarry to the storage of cement.\n"
                  "After the raw meal is burned, the emerging clinker of varying consistency is stored for further processing. The silos are filled and emptied through different openings. Continuous operation of the subsequent production processes is ensured by level measurement and point level detection.\n",
          "industry": "🔹 Suitable for harsh environment \n"
              "🔹 1 mm accuracy.\n"
              "🔹 Up to 30-meter silos height.\n"
              "🔹 Very narrow beam angle.\n"
              "🔹 Industrial protection up to IP69.\n"
        },
      }
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              height: 200,
              'images/manufacturers/VEGA.png',
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 250, vertical: 16),
              child: Column(
                children: [
                  const CustomExpansionTile(
                    title: 'About VEGA',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'VEGA is a renowned manufacturer of process measurement technology, offering a wide range of level transmitters for industrial applications. These devices are designed to measure the level of liquids, solids, and powders in various industrial processes. VEGA’s level transmitters provide reliable, accurate, and cost-effective solutions that help optimize operations, improve safety, and ensure product quality.\n\n'
                          'In this overview, we will explore the different types of VEGA level transmitters and their key applications in the oil & gas, cement, and power generation industries.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSolutionsSection(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              const Text(
                "Types of VEGA Level Transmitters :",
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
                  _buildSolutionTab("Radar Level Transmitters (VEGAWAVE)", '1'),
                  _buildSolutionTab(
                      "Ultrasonic Level Transmitters (VEGAPULS)", '2'),
                  _buildSolutionTab(
                    "Capacitive Level Transmitters (VEGACAP)",
                    '3',
                  ),
                  _buildSolutionTab(
                      "Tuning Fork Level Switches (VEGAPOINT)", '4'),
                  _buildSolutionTab("Vibrating Level Switches (VEGAVIB)", '5'),
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
      ),
    );
  }

  Widget _buildSolutionTab(String title, String number) {
    bool isSelected = selectedType == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedType = title;
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
                    color: CustomColor.primaryColor.withOpacity(0.3),
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

  Widget _buildSolutionContent() {
    String description = typeOfVega[selectedType]?["description"] ?? "";
    String features = typeOfVega[selectedType]?["features"] ?? "";
    Map<String, Map<String, String>> applications =
        (typeOfVega[selectedType]?["applications"] as Map?)
                ?.cast<String, Map<String, String>>() ??
            {};

    return Container(
      key: ValueKey<String>(selectedType),
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        // color: CustomColor.primaryColor.withOpacity(0.2),
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
              height: 1.6,
            ),
          ),
          const SizedBox(height: 15),
          if (features.isNotEmpty) ...[
            const Text(
              "🔹 Features:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.primaryColor),
            ),
            const SizedBox(height: 10),
            for (var feature in features.split("\n"))
              if (feature.trim().isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          feature.trim(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ],
          if (applications.isNotEmpty) ...[
            const SizedBox(height: 20),
            const Text(
              "📌 Applications as per industry:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CustomColor.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            for (var entry in applications.entries) ...[
              const SizedBox(height: 10),
              Text(
                "🔹 ${entry.key}:",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  entry.value["application"] ?? "",
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              if (entry.value.containsKey("industry"))
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "${entry.value["industry"]}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: CustomColor.primaryColor),
                  ),
                ),
              const Divider(
                thickness: 1.2,
                height: 20,
                color: Colors.grey,
              ),
            ],
          ],
        ],
      ),
    );
  }
}
