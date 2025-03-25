import 'package:flutter/material.dart';

import '../../widgets/section_path.dart';
import '../header/header_section_old.dart';

class OrganizationPage extends StatefulWidget {
  const OrganizationPage({super.key});

  @override
  State<OrganizationPage> createState() => _OrganizationPageState();
}

class _OrganizationPageState extends State<OrganizationPage> {
  void _scrollToSection(GlobalKey key) {
    Navigator.of(context).pushNamed('/');
  }

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _manufacturersKey = GlobalKey();
  final GlobalKey _solutionKey = GlobalKey();
  final GlobalKey _referencesKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(
              onHomeTap: () => _scrollToSection(_homeKey),
              onAboutTap: () => _scrollToSection(_aboutKey),
              onManufacturersTap: () => _scrollToSection(_manufacturersKey),
              onSolutionTap: () => _scrollToSection(_solutionKey),
              onReferenceTap: () => _scrollToSection(_referencesKey),
            ),
            Image.network('https://i.postimg.cc/25CJVmBc/org.png'),
            // Image.asset(
            //   'images/electrical/slider4.png',
            // ),
            buildSectionPath(
                'Organization Chart', 'about / Organization Chart'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 200, vertical: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://ibb.co/wZrXprVG',
                    fit: BoxFit.cover,
                  ),
                  // child: Image.asset(
                  //   'images/about/org.png',
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
