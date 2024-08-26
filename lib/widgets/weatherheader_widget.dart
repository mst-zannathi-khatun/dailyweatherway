import 'package:flutter/material.dart';

import '../style/custom_icon_style.dart';
import '../style/text_style.dart';
import '../ui/search_screen.dart';

class WeatherHeaderWidget extends StatelessWidget {
  final VoidCallback onMorePressed;

  const WeatherHeaderWidget({
    super.key,
    required this.onMorePressed, // Required callback
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bacground.jpg",
          width: double.infinity,
          color: Colors.black12.withOpacity(0.5),
          colorBlendMode: BlendMode.xor,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            IconButton(
              onPressed: onMorePressed, // Use the callback here
              icon: CustomButtonIcons.weatherHeaderMoreVert,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              icon: CustomButtonIcons.weatherHeaderAddBox,
            ),
          ],
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              "Weather",
              style: CustomTextStyles.weatherHeader,
            ),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
