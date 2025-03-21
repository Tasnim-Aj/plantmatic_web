// import 'package:flutter/material.dart';
//
// class SolutionsSection extends StatefulWidget {
//   const SolutionsSection({super.key});
//
//   @override
//   _SolutionsSectionState createState() => _SolutionsSectionState();
// }
//
// class _SolutionsSectionState extends State<SolutionsSection> {
//   /// 🟢 تحديد القسم المختار
//   String selectedSolution = "Pressure Measurement";
//
//   /// 🟢 البيانات لكل نوع قياس
//   final Map<String, Map<String, String>> solutionDetails = {
//     "Pressure Measurement": {
//       "description":
//           "In the oil & gas industry, accurate pressure measurement is critical to ensure safe, efficient, and effective operations. "
//               "WIKA KSR pressure sensors are engineered to withstand extreme conditions in upstream, midstream, and downstream applications. "
//               "Whether monitoring pipelines, drilling operations, or refining processes, WIKA KSR pressure sensors provide the reliability and precision needed to optimize performance and enhance safety.",
//       "applications":
//           "🔹 Drilling Rigs: Monitor the pressure within drilling systems.\n"
//               "🔹 Pipeline Systems.\n"
//               "🔹 Refining Processes: Measure and control pressure in reactors, distillation columns, and other critical refining equipment.\n"
//               "🔹 Offshore Platforms.\n"
//     },
//     "Temperature Measurement": {
//       "description":
//           "In industries like Oil & Gas and Power Generation, accurate temperature monitoring is vital to ensure the safety, efficiency, and longevity of critical systems. "
//               "WIKA KSR’s temperature sensors are designed to provide precise, reliable measurements under the harshest industrial conditions, ensuring optimal performance and safety in applications such as boilers, turbines, drilling rigs, and pipeline systems.",
//       "applications": "🔹 Turbine Monitoring: Temperature sensors are essential for monitoring steam and gas turbines.\n"
//           "🔹 Boiler and Heat Exchanger Systems: Precise temperature measurement in boilers, heat exchangers, and condensers.\n"
//           "🔹 Cooling Systems: Temperature sensors are used to monitor cooling water and air systems.\n"
//           "🔹 Energy Efficiency: By maintaining optimal temperature conditions.\n"
//     },
//     "Level Measurement": {
//       "description":
//           "In the oil & gas industry, accurate level measurement is critical to ensure safe, efficient, and effective operations. "
//               "WIKA KSR level sensors provide reliable monitoring of liquid, slurry, and solid levels in various applications, such as storage tanks, reactors, and pipelines.",
//       "applications": "🔹 Oil Storage Tanks.\n"
//           "🔹 Distillation towers level measurement & Control.\n"
//           "🔹 Separation and Processing Systems.\n"
//           "🔹 Drilling Rigs.\n"
//           "🔹 Offshore Platforms.\n"
//     },
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         color: Colors.white,
//         padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//         child: Column(
//           children: [
//             /// 🔹 التبويبات (Navigation Tabs)
//             Wrap(
//               spacing: 15,
//               runSpacing: 15,
//               alignment: WrapAlignment.center,
//               children: [
//                 _buildSolutionTab("Pressure Measurement", Icons.speed),
//                 _buildSolutionTab("Temperature Measurement", Icons.thermostat),
//                 _buildSolutionTab("Level Measurement", Icons.water),
//               ],
//             ),
//
//             const SizedBox(height: 30),
//
//             /// 🔹 عرض محتوى القسم المختار
//             AnimatedSwitcher(
//               duration: const Duration(milliseconds: 500),
//               transitionBuilder: (widget, animation) {
//                 return FadeTransition(
//                   opacity: animation,
//                   child: widget,
//                 );
//               },
//               child: _buildSolutionContent(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   /// ✅ تبويب لكل حل
//   Widget _buildSolutionTab(String title, IconData icon) {
//     bool isSelected = selectedSolution == title;
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedSolution = title;
//         });
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.blue.shade700 : Colors.blue.shade100,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: isSelected
//               ? [
//                   BoxShadow(
//                     color: Colors.blue.withOpacity(0.3),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                     offset: const Offset(3, 3),
//                   ),
//                 ]
//               : [],
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(icon,
//                 color: isSelected ? Colors.white : Colors.blue, size: 24),
//             const SizedBox(width: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: isSelected ? Colors.white : Colors.blue.shade700,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   /// ✅ محتوى القسم المختار
//   Widget _buildSolutionContent() {
//     String description =
//         solutionDetails[selectedSolution]?["description"] ?? "";
//     String applications =
//         solutionDetails[selectedSolution]?["applications"] ?? "";
//
//     return Container(
//       key: ValueKey<String>(selectedSolution),
//       width: MediaQuery.of(context).size.width * 0.9,
//       padding: const EdgeInsets.all(25),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             spreadRadius: 2,
//             offset: const Offset(3, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// 🔹 العنوان الفرعي
//           Text(
//             selectedSolution,
//             style: const TextStyle(
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue,
//             ),
//           ),
//           const SizedBox(height: 10),
//
//           /// 🔹 الوصف
//           Text(
//             description,
//             style: const TextStyle(
//               fontSize: 18,
//               color: Colors.black87,
//               height: 1.5,
//             ),
//           ),
//
//           const SizedBox(height: 20),
//
//           /// 🔹 عنوان التطبيقات (بحجم ولون مميز)
//           Text(
//             "Applications of $selectedSolution in Oil & Gas:",
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue,
//             ),
//           ),
//           const SizedBox(height: 10),
//
//           /// 🔹 قائمة التطبيقات
//           Text(
//             applications,
//             style: const TextStyle(
//               fontSize: 18,
//               color: Colors.black87,
//               height: 1.5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
