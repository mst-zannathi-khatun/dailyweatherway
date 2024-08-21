import 'package:flutter/material.dart';

class WeatherOverViewDailyWidget extends StatelessWidget {
  const WeatherOverViewDailyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
              _buildWeatherRow(
                  "Today", "31 \u00B0 / 27 \u00B0", "100%"),
              _buildWeatherRow(
                  "Thursday", "31 \u00B0 / 27 \u00B0", "80%"),
              _buildWeatherRow(
                  "Friday", "31 \u00B0 / 27 \u00B0", "60%"),
              _buildWeatherRow(
                  "Saturday", "31 \u00B0 / 27 \u00B0", "50%"),
              _buildWeatherRow(
                  "Sunday", "31 \u00B0 / 27 \u00B0", "50%"),
              _buildWeatherRow(
                  "Monday", "31 \u00B0 / 27 \u00B0", "80%"),
              _buildWeatherRow(
                  "Tuesday", "31 \u00B0 / 27 \u00B0", "70%"),
              const SizedBox(
                height: 8,
              ),
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
    );
  }
  Widget _buildWeatherRow(String day, String tempRange, String percent) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 75,
          child: Text(
            day,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 60, // Fixed width to align water drop icons
              child: Row(
                children: [
                  const Icon(
                    Icons.water_drop,
                    color: Color(0xFF00BFFF),
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(percent),
                ],
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.cloud_rounded,
              color: Color(0xFF00BFFF),
              size: 32,
            ),
            const SizedBox(width: 6),
            const Icon(
              Icons.cloud_rounded,
              color: Color(0xFF00BFFF),
              size: 32,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(tempRange),
          ],
        ),
      ],
    );
  }
}
