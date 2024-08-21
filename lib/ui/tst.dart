import 'package:flutter/material.dart';

class TSLHomeScreen extends StatefulWidget {
  const TSLHomeScreen({super.key});

  @override
  State<TSLHomeScreen> createState() => _TSLHomeScreenState();
}

class _TSLHomeScreenState extends State<TSLHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildWeatherRow("Today", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Thursday", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Friday", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Saturday", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Sunday", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Monday", "31 \u00B0 / 27 \u00B0"),
                      _buildWeatherRow("Tuesday", "31 \u00B0 / 27 \u00B0"),
                      const SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffefcf0a),
                          ),
                          child: const Text(
                            "More",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherRow(String day, String tempRange) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 80, // Fixed width for day names
          child: Text(
            day,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.water_drop,
              color: Color(0xFF00BFFF),
              size: 14,
            ),
            const SizedBox(width: 4),
            const Text("100%"),
            const SizedBox(width: 16),
            Icon(
              Icons.cloud_rounded,
              color: Color(0xFF00BFFF),
              size: 32,
            ),
            const SizedBox(width: 6),
            Icon(
              Icons.cloud_rounded,
              color: Color(0xFF00BFFF),
              size: 32,
            ),
          ],
        ),
        Text(tempRange),
      ],
    );
  }
}
