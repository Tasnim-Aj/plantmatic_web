import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/pages/about/safty_page.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/omc_page.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/schneider_page.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/siemens_page.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/vega_page.dart';
import 'package:plantmatic_web/ui/pages/manufacturers/wika_page.dart';
import 'package:plantmatic_web/ui/pages/solution/fms_page.dart';
import 'package:plantmatic_web/ui/pages/solution/panel_building_page.dart';
import 'package:plantmatic_web/ui/pages/solution/steam_generators_page.dart';
import 'package:plantmatic_web/ui/pages/solution/tank_gauging_page.dart';

import 'ui/pages/about/organization_page.dart';
import 'ui/pages/home/automation_page.dart';
import 'ui/pages/home/electrical_page.dart';
import 'ui/pages/home/home_page.dart';
import 'ui/pages/home/instrumentation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: OrganizationPage(),

      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),

        /// home
        '/electricalDetails': (context) => ElectricalEngineeringPage(),
        '/automationDetails': (context) => const AutomationPage(),
        '/instrumentationDetails': (context) => const InstrumentationPage(),

        /// about
        '/orgDetails': (context) => const OrganizationPage(),
        '/safetyDetails': (context) => SafetyPage(),

        /// manufacturers
        '/wikaDetails': (context) => const WikaPage(),
        '/siemensDetails': (context) => const SiemensPage(),
        '/schneiderDetails': (context) => const SchneiderPage(),
        '/vegaDetails': (context) => const VegaPage(),
        '/omcDetails': (context) => const OmcPage(),

        /// solution
        '/tankDetails': (context) => TankGaugingPage(),
        '/fmsDetails': (context) => const FmsPage(),
        '/panelDetails': (context) => const PanelBuildingPage(),
        '/steamDetails': (context) => SteamGeneratorsPage(),
      },
    );
  }
}
