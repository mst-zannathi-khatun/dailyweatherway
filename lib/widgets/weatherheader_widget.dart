import 'package:flutter/material.dart';

class WeatherHeader extends StatelessWidget {
  const WeatherHeader({
    super.key,
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
        const Positioned.fill(
          child: Center(
            child: Text(
              "Weather",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 24,
                  color: Colors.black54,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box,
                  size: 24,
                  color: Colors.black54,
                )),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
