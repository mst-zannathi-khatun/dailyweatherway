import 'package:flutter/material.dart';

class WeatherOverview extends StatelessWidget {
  const WeatherOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        color: Colors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 24,
                  ),
                  Text("Rampura"),
                ],
              ),
              const Text("Sun, 18 August 10.45 AM"),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.cloud_rounded,
                    size: 50,
                    color: Color(0xFF00BFFF),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "27\u00B0",
                    style: TextStyle(fontSize: 50),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("Rain Shower"),
                      Text("27\u00B0 / 25\u00B0"),
                      Text("Feels like 31\u00B0"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(
                children: [
                  Text("10 am"),
                  Spacer(),
                  Text("11 am"),
                  Spacer(),
                  Text("12 pm"),
                  Spacer(),
                  Text("1 pm"),
                  Spacer(),
                  Text("2 pm"),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.cloud_sharp,
                    size: 50,
                    color: Color(0xFF00BFFF),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud,
                    size: 50,
                    color: Color(0xFF87CEEB),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud_rounded,
                    size: 50,
                    color: Color(0xFF87CEFA),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud_rounded,
                    size: 50,
                    color: Color(0xFFADD8E6),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud_rounded,
                    color: Color.fromARGB(255, 135, 206, 250),
                    size: 50,
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.water_drop,
                    color: Color(0xFF00BFFF),
                  ),
                  Text("30%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_outlined,
                    color: Color(0xFF00BFFF),
                  ),
                  Text("40%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_rounded,
                    color: Color(0xFF00BFFF),
                  ),
                  Text("50%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_rounded,
                    color: Color(0xFF00BFFF),
                  ),
                  Text("60%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_rounded,
                    color: Color.fromARGB(255, 0, 191, 255),
                  ),
                  Text("80%"),
                ],
              ),
              const SizedBox(
                height: 16,
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
}
