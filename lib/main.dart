import 'package:flutter/material.dart';
import 'package:plantmatic_web/ui/pages/solution/tank_gauging_page.dart';

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
      home: TankGaugingPage(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //
      //   /// home
      //   '/electricalDetails': (context) => const ElectricalEngineeringPage(),
      //   '/automationDetails': (context) => const AutomationPage(),
      //   '/instrumentationDetails': (context) => const InstrumentationPage(),
      //
      //   /// about
      //   '/orgDetails': (context) => const OrganizationPage(),
      //   '/safetyDetails': (context) => const SafetyPage(),
      //
      //   /// manufacturers
      //   '/wikaDetails': (context) => const WikaPage(),
      //   '/siemensDetails': (context) => const SiemensPage(),
      //   '/schneiderDetails': (context) => const SchneiderPage(),
      //   '/vegaDetails': (context) => const VegaPage(),
      //   '/omcDetails': (context) => const OmcPage(),
      //
      //   /// solution
      //   '/tankDetails': (context) => const TankGaugingPage(),
      //   '/fmsDetails': (context) => const FmsPage(),
      //   '/panelDetails': (context) => const PanelBuildingPage(),
      //   '/steamDetails': (context) => const SteamGeneratorsPage(),
      // },
    );
  }
}
