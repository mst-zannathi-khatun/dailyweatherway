import 'package:flutter/material.dart';
import '../style/custom_color.dart';
import '../style/text_style.dart';

class DrawerLastPartWidget extends StatelessWidget {
  const DrawerLastPartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.report,
              size: 30,
              color: CustomColor.lightGrey,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Report wrong location",
              style: CustomTextStyles.drawerText,
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(
              Icons.headphones,
              size: 30,
              color: CustomColor.lightGrey,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Contact us",
              style: CustomTextStyles.drawerText,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(
              Icons.question_mark,
              size: 30,
              color: CustomColor.lightGrey,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "How to use",
              style: CustomTextStyles.drawerText,
            )
          ],
        )
      ],
    );
  }
}
