import 'package:flutter/material.dart';

import '../../style/custom_color.dart';

class HeaderSection extends StatefulWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onManufacturersTap;
  final VoidCallback onSolutionTap;
  final VoidCallback onReferenceTap;

  const HeaderSection({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onManufacturersTap,
    required this.onSolutionTap,
    required this.onReferenceTap,
  });

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  String _activeTab = "Home";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 5,
        right: 20,
        left: 20,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: Image.network(
              'https://i.ibb.co/BKBnMS7G/logo.png',
              width: 50,
              height: 50,
            ),
            // child: Image.asset(
            //   'images/header/logo.png',
            //   height: 50,
            //   width: 50,
            // ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildNavItem("Home", widget.onHomeTap),
              _buildNavItem("About", widget.onAboutTap),
              _buildNavItem("Manufacturers", widget.onManufacturersTap),
              _buildNavItem("Solution", widget.onSolutionTap),
              _buildNavItem("References", widget.onReferenceTap),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, VoidCallback onTap) {
    bool isActive = _activeTab == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          _activeTab = title;
        });
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: isActive
              ? const Border(
                  bottom: BorderSide(
                    color: CustomColor.primaryColor,
                    width: 3,
                  ),
                )
              : null,
        ),
        child: MouseRegion(
          onEnter: (_) => setState(() => _activeTab = title),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              color: isActive ? CustomColor.primaryColor : Colors.black87,
            ),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
