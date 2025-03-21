import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/manufacturers_section.dart';

import '../about/about_section.dart';
import '../header/header_section_old.dart';
import '../references/references_section.dart';
import '../solution/solution_section.dart';
import 'home_section.dart';

class HomePage extends StatelessWidget {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _manufacturersKey = GlobalKey();
  final GlobalKey _solutionKey = GlobalKey();
  final GlobalKey _referencesKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  HomePage({super.key});

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderSection(
            onHomeTap: () => _scrollToSection(_homeKey),
            onAboutTap: () => _scrollToSection(_aboutKey),
            onManufacturersTap: () => _scrollToSection(_manufacturersKey),
            onSolutionTap: () => _scrollToSection(_solutionKey),
            onReferenceTap: () => _scrollToSection(_referencesKey),
            // onContactTap: () => _scrollToSection(_contactKey),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeSection(key: _homeKey),
                  AboutSection(key: _aboutKey),
                  ManufacturersSection(key: _manufacturersKey),
                  SolutionSection(key: _solutionKey),
                  ReferencesSection(key: _referencesKey),
                  // ContactSection(key: _contactKey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
