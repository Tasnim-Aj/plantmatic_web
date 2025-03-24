import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: KeyFactsPage(),
  ));
}

class KeyFactsPage extends StatelessWidget {
  const KeyFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Facts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banners/vision_mission.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Page Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Key Facts',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Breadcrumb(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Key Facts Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg/keyfacts_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/1.png',
                    title: 'Formation',
                    description:
                        'Established by a Royal Decree in February 1994, by His Late Majesty Sultan Qaboos Bin Said.',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/2.png',
                    title: 'Primary Product',
                    description: 'Liquefied Natural Gas (LNG)',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/3.png',
                    title: 'Secondary Product',
                    description: 'Natural Gas Liquids (NGLs)',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/4.png',
                    title: 'Feed Gas',
                    description:
                        'Central Oman Gas Field Complex, operated by Petroleum Development Oman (PDO) on behalf of the Government of Oman',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/5.png',
                    title: 'Operations Plant',
                    description:
                        'On a 1.4 square kilometer site at Qalhat, near Sur, some 200 km south-east of Muscat',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/6.png',
                    title: 'Corporate Head Office',
                    description: 'Muscat',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/7.png',
                    title: 'Pipeline Length',
                    description: '360 kilometers',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/8.png',
                    title: 'Pipeline Diameter',
                    description: '48 inches',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/9.png',
                    title: 'Capacity',
                    description: '34 million cubic meters per day',
                  ),
                  _buildKeyFact(
                    iconPath: 'assets/images/icons/key-facts/9.png',
                    title: 'Pipeline Operator',
                    description: 'OQ',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Our Buyers Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Buyers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildBuyer(
                        logoPath: 'assets/images/buyers/1.png',
                        name: 'Korea Gas Corporation (KOGAS)',
                        quantity: '4.1 Million Tonnes per Annum',
                        period: 'Apr, 2000 - Dec, 2024',
                      ),
                      _buildBuyer(
                        logoPath: 'assets/images/buyers/2.png',
                        name: 'Osaka Gas of Japan',
                        quantity: '0.7 Million Tonnes per Annum',
                        period: 'Apr, 2000 - Dec, 2024',
                      ),
                      _buildBuyer(
                        logoPath: 'assets/images/buyers/3.png',
                        name: 'Itochu Corporation',
                        quantity: '0.7 Million Tonnes per Annum',
                        period: 'Mar, 2006 - Dec, 2024',
                      ),
                      _buildBuyer(
                        logoPath: 'assets/images/buyers/4.png',
                        name: 'BP Singapore',
                        quantity: '1.1 Million Tonnes per Annum',
                        period: 'Jan, 2018 - Dec, 2025',
                      ),
                      _buildBuyer(
                        logoPath: 'assets/images/buyers/5.png',
                        name: 'OQ',
                        quantity: '250,000 Metric Tonnes per Annum NGL Product',
                        period: 'Jan, 2019 - Dec, 2024',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyFact({
    required String iconPath,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Image.asset(
          iconPath,
          height: 50,
          width: 50,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildBuyer({
    required String logoPath,
    required String name,
    required String quantity,
    required String period,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logoPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              quantity,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              period,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Who We Are'),
        Icon(Icons.chevron_right),
        Text('Oman LNG in Brief'),
        Icon(Icons.chevron_right),
        Text('Key Facts', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
