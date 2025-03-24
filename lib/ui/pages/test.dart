import 'package:flutter/material.dart';

class ValuesPage extends StatelessWidget {
  const ValuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Values'),
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
                    'Our Values',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Breadcrumb(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Individual Behaviour Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Individual Behaviour',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildValueItem(
                  iconPath: 'assets/images/values/individual/icon-1.png',
                  imagePath: 'assets/images/values/individual/1.jpg',
                  number: '01',
                  title: 'Integrity',
                  items: [
                    'Living the OLNG values',
                    'Doing what is right even if no one is watching',
                  ],
                ),
                _buildValueItem(
                  iconPath: 'assets/images/values/individual/icon-2.png',
                  imagePath: 'assets/images/values/individual/2.jpg',
                  number: '02',
                  title: 'Professionalism',
                  items: [
                    'Producing quality work at all times',
                    'Efficiency and effectiveness in carrying out assigned roles and responsibilities',
                  ],
                ),
                _buildValueItem(
                  iconPath: 'assets/images/values/individual/icon-3.png',
                  imagePath: 'assets/images/values/individual/3.jpg',
                  number: '03',
                  title: 'Accountability',
                  items: [
                    'Delivering on promise based on agreed targets',
                    'Demonstrating ownership of mandated assignments',
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Organisational Behaviour Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Organisational Behaviour',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildValueItem(
                        iconPath:
                            'assets/images/values/organisational/icon-1.png',
                        imagePath: 'assets/images/values/organisational/1.jpg',
                        number: '01',
                        title: 'Team Work',
                        items: [
                          'Collaborating with others to leverage team diversity',
                          'Value differences and leverage on diversity of the team',
                        ],
                      ),
                      _buildValueItem(
                        iconPath:
                            'assets/images/values/organisational/icon-2.png',
                        imagePath: 'assets/images/values/organisational/2.jpg',
                        number: '02',
                        title: 'Care & Respect',
                        items: [
                          'Listening to concerns of stakeholders',
                          'Respecting diversity',
                          'Considering stakeholders\' needs',
                        ],
                      ),
                      _buildValueItem(
                        iconPath:
                            'assets/images/values/organisational/icon-3.png',
                        imagePath: 'assets/images/values/organisational/3.jpg',
                        number: '03',
                        title: 'Empowerment',
                        items: [
                          'Having confidence and trust in delegating responsibilities to staff to execute tasks competently',
                          'Coaching and mentoring to continuously develop staff',
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Business Behaviour Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business Behaviour',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildValueItem(
                        iconPath: 'assets/images/values/business/icon-1.png',
                        imagePath: 'assets/images/values/business/1.jpg',
                        number: '01',
                        title: 'Transparency & Fairness',
                        items: [
                          'Engage staff/stakeholders in an open, transparent and timely manner',
                          'Provide equal opportunity to all staff without prejudice',
                          'Impartiality in staff reward and recognition',
                          'Build courage to give objective feedback',
                        ],
                      ),
                      _buildValueItem(
                        iconPath: 'assets/images/values/business/icon-2.png',
                        imagePath: 'assets/images/values/business/2.jpg',
                        number: '02',
                        title: 'Reputation & Loyalty',
                        items: [
                          'Compliance with the law and business principles in order to maintain credibility with stakeholders and the license to operate',
                          'Uphold business interests at all times without breaching organisational confidentiality',
                        ],
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

  Widget _buildValueItem({
    required String iconPath,
    required String imagePath,
    required String number,
    required String title,
    required List<String> items,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(iconPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$number ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    '• $item',
                    style: const TextStyle(fontSize: 14),
                  ),
                );
              }).toList(),
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
        Text('Our Values', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
