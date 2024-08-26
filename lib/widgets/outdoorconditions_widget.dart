import 'package:flutter/material.dart';

class OutdoorConditionsWidget extends StatelessWidget {
  const OutdoorConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 4,
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              outdoorConditionRow(
                icon: Icons.car_crash,
                iconText: "Driving difficulty",
                lastText: "Wet",
                iconColor: Colors.blue,
              ),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              outdoorConditionRow(
                icon: Icons.air_sharp,
                iconText: "Pollen",
                lastText: "None",
                iconColor: Colors.cyan,
              ),
              const Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              outdoorConditionRow(
                icon: Icons.snowshoeing,
                iconText: "Running",
                lastText: "Very Poor",
                iconColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget outdoorConditionRow({
    required IconData icon,
    required String iconText,
    required String lastText,
    required Color iconColor,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40,
          color: iconColor,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          iconText,
          style: const TextStyle(fontSize: 20),
        ),
        const Spacer(),
        Text(
          lastText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
