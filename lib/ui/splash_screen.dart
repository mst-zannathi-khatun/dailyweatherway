import 'package:dailyweatherway/ui/home_screen.dart';
import 'package:flutter/material.dart';

import '../style/custom_color.dart';
import '../style/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Image.asset("assets/images/dlogo.png"),
      const SizedBox(
        height: 60,
      ),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Daily Weather Way",
              style: CustomTextStyles.splashHeader,
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.goldenYellow),
                child: Text(
                  "Get Start",
                  style: CustomTextStyles.splashButton,
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
