import 'package:flutter/material.dart';

import '../widgets/weatherheader_widget.dart';
import '../widgets/weatheroverview_widget.dart';
import '../widgets/weatheroverviewdaily_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WeatherHeader(),
            const SizedBox(
              height: 8,
            ),
            const WeatherOverview(),
            const SizedBox(
              height: 8,
            ),
            WeatherOverViewDailyWidget(),
            const SizedBox(
              height: 8,
            ),

          ],
        ),
      ),
    );
  }
}
