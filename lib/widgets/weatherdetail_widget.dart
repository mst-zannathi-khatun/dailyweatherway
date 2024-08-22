import 'package:flutter/material.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _WeatherDetailRow(Icons.online_prediction_rounded,
                  "UV Index", "Low", const Color(0xffefcf0a)),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              _WeatherDetailRow(
                  Icons.sunny, "Sunrise", "5.36 am", const Color(0xffe66100)),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              _WeatherDetailRow(Icons.sunny_snowing, "Sunset",
                  "6.25 km", const Color(0xffd38a55)),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              _WeatherDetailRow(Icons.wind_power, "Wind", "6.25/h",
                  const Color(0xffB0E0E6)),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              _WeatherDetailRow(Icons.dashboard, "AQI", "High (7)",
                  const Color(0xffbcb8b6)),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              _WeatherDetailRow(Icons.water_drop, "Humidity", "92%",
                  const Color(0xff00BFFF)),
            ],
          ),
        ),
      ),
    );
  }
  Widget _WeatherDetailRow(
      IconData icon,
      String iconText,
      String lastText,
      Color iconColor,
      ) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 40,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          iconText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          lastText,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
