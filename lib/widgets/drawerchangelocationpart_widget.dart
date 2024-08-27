import 'package:flutter/material.dart';

import '../style/custom_color.dart';
import 'dotdivider.dart';

class DrawerChangeLocationPart extends StatelessWidget {
  const DrawerChangeLocationPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: CustomColor.lightGrey,
            ),
            Text("Other Locations"),
          ],
        ),
        Row(
          children: [
            const Text("      Dhaka"),
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
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Change Locations",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const DotDivider(),
      ],
    );
  }
}
