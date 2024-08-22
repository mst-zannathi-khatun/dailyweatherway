import 'package:flutter/material.dart';

import '../widgets/outdoorconditions_widget.dart';
import '../widgets/weatherdetail_widget.dart';
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
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WeatherHeader(),
            SizedBox(
              height: 8,
            ),
            WeatherOverview(),
            SizedBox(
              height: 16,
            ),
            WeatherOverViewDailyWidget(),
            SizedBox(
              height: 16,
            ),
            WeatherDetailWidget(),
            SizedBox(
              height: 16,
            ),
            OutdoorConditionsWidget(),
              ],
            )
        ),
    );
  }
}

