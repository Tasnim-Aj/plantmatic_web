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
            companyImage: 'https://i.ibb.co/84mg2tBL/WIKA.png',
            detailsPageRoute: '/wikaDetails',
          ),
          ManufacturerCard(
            companyImage: 'https://i.ibb.co/mCvtYR1P/Siemens-Logo.png',
            detailsPageRoute: '/siemensDetails',
          ),
          ManufacturerCard(
            companyImage: 'https://i.ibb.co/F4HSm2Tq/images.png',
            detailsPageRoute: '/schneiderDetails',
          ),
          ManufacturerCard(
            companyImage: 'https://i.ibb.co/jv46bj3d/VEGA.png',
            detailsPageRoute: '/vegaDetails',
          ),
          ManufacturerCard(
            companyImage: 'https://i.ibb.co/1fF0gvKG/OMC.jpg',
            detailsPageRoute: '/omcDetails',
          ),
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
            'https://i.ibb.co/rGym1fMT/ABB.png',
            'https://i.ibb.co/Lz7pcz9K/NIRMAL-VALVES.png',
            'https://i.ibb.co/Dg5ThsW1/AUDCO.jpg',
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
          child: Image.network(companyImage, width: 100),
        ),
      ),
    );
  }
}
