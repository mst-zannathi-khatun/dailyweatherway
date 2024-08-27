import 'package:flutter/material.dart';

import 'dotdivider.dart';

class DrawerSettingPartWidget extends StatelessWidget {
  const DrawerSettingPartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.topRight,
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Color(0xFF00BFFF),
            ),
            SizedBox(width: 8),
            Text(
              "Favourite Location",
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Icon(
              Icons.share_location_outlined,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            const Icon(
              Icons.location_on,
              size: 14,
              color: Color(0xFF00BFFF),
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              "Rampura",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00BFFF)),
            ),
            const Spacer(),
            Icon(
              Icons.cloud_rounded,
              color: Colors.grey.withOpacity(0.5),
              size: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            const Text("28 \u00B0"),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        const DotDivider(),
      ],
    );
  }
}