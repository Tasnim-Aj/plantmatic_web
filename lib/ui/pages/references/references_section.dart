import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'data_reference.dart';

class ReferencesSection extends StatelessWidget {
  const ReferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: projectsData.length,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSlider(),
            const SizedBox(height: 20),
            Text(
              'Industry',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [Colors.blue.shade800, Colors.green.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
              ),
            ),
            const SizedBox(height: 20),

            // ✅ إنشاء التبويبات تلقائيًا من الـ Map
            TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey[800],
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade600, Colors.green.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                // borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(2, 3),
                  ),
                ],
              ),
              tabs: projectsData.keys.map((tabName) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(
                    text: tabName,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 1250,
              child: TabBarView(
                children: projectsData.values.map((data) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _buildTable(data),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTable(List<Map> data) {
    return Table(
      border: TableBorder.all(
        color: Colors.blue.shade300,
        width: 1,
      ),
      columnWidths: const {
        0: FlexColumnWidth(4),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
      },
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          children: [
            _buildTableCell('Project', isHeader: true),
            _buildTableCell('Brands', isHeader: true),
            _buildTableCell('Sector', isHeader: true),
          ],
        ),
        for (int i = 0; i < data.length; i++)
          TableRow(
            decoration: BoxDecoration(
              color: i.isEven ? Colors.grey.shade100 : Colors.white,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data[i]['project'] ?? '',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data[i]['brands'] ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data[i]['sector'] ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false}) {
    return Container(
      width: double.infinity,
      color: isHeader ? Colors.blue.shade100 : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isHeader ? Colors.blue.shade700 : Colors.black,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontSize: isHeader ? 16 : 14,
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ImageSlideshow(
        height: 330,
        indicatorColor: Colors.blueGrey[800],
        isLoop: true,
        autoPlayInterval: 5000,
        children: [
          Image.network('https://i.ibb.co/CsVNJT1F/home-slider4.jpg'),
          Image.network('https://i.ibb.co/CsVNJT1F/home-slider4.jpg'),
          Image.network('https://i.ibb.co/CsVNJT1F/home-slider4.jpg'),
          // Image.asset('images/slider/home-slider4.jpg', fit: BoxFit.cover),
          // Image.asset('images/slider/home-slider4.jpg', fit: BoxFit.cover),
          // Image.asset('images/slider/home-slider4.jpg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
