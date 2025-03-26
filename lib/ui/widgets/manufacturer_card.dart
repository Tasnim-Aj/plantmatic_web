import 'package:flutter/material.dart';

import '../style/custom_color.dart';
import '../style/font/app_constants.dart';

class ManufacturerCard extends StatefulWidget {
  final String companyImage;
  final String detailsPageRoute;

  const ManufacturerCard({
    super.key,
    required this.companyImage,
    required this.detailsPageRoute,
  });

  @override
  State<ManufacturerCard> createState() => _ManufacturerCardState();
}

class _ManufacturerCardState extends State<ManufacturerCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, widget.detailsPageRoute);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: AppConstants.cardHeight,
          width: AppConstants.cardWidth,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: CustomColor.cardColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: CustomColor.shadowColor,
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Image.network(
                    isHovered
                        ? "images/automation/automation1.png"
                        : widget.companyImage,
                    width: AppConstants.imageWidth,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Read more',
                      style: TextStyle(
                        color: CustomColor.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: CustomColor.secondaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
