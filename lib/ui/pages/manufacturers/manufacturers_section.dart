import 'package:flutter/material.dart';

import '../../style/custom_color.dart';
import '../../widgets/manufacturer_card.dart';

class ManufacturersSection extends StatefulWidget {
  const ManufacturersSection({super.key});

  @override
  State<ManufacturersSection> createState() => _ManufacturersSectionState();
}

class _ManufacturersSectionState extends State<ManufacturersSection> {
  String? hoveredCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Manufacturers",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        color: Colors.black, // لون الظل
                        blurRadius: 10, // تموج الظل
                        offset: Offset(2, 2), // اتجاه الظل
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                _buildManufacturers(),
                const SizedBox(height: 20),
                Divider(color: Colors.grey.shade200, thickness: 2.5),
                const SizedBox(height: 20),
                _buildOtherManufacturers(),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildManufacturers() {
    return const Center(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          ManufacturerCard(
            companyImage: 'images/manufacturers/wika_logo.png',
            detailsPageRoute: '/wikaDetails',
          ),
          ManufacturerCard(
            companyImage: 'images/manufacturers/siemens_logo.png',
            detailsPageRoute: '/siemensDetails',
          ),
          ManufacturerCard(
            companyImage: 'images/manufacturers/schneider.png',
            detailsPageRoute: '/schneiderDetails',
          ),
          ManufacturerCard(
            companyImage: 'images/manufacturers/VEGA.png',
            detailsPageRoute: '/vegaDetails',
          ),
          ManufacturerCard(
            companyImage: 'images/manufacturers/OMC.jpg',
            detailsPageRoute: '/omcDetails',
          ),
          // إضافة المزيد من البطاقات هنا
        ],
      ),
    );
  }

  Widget _buildOtherManufacturers() {
    return Center(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          for (var imagePath in [
            'images/manufacturers/ABB.png',
            'images/manufacturers/nirmal_logo.png',
            'images/manufacturers/audco_logo.jpg',
          ])
            _buildSimpleManufacturer(imagePath),
        ],
      ),
    );
  }

  Widget _buildSimpleManufacturer(String companyImage) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
        ),
        child: Center(
          child: Image.asset(companyImage, width: 100),
        ),
      ),
    );
  }
}
