import 'package:dailyweatherway/widgets/dotdivider.dart';
import 'package:flutter/material.dart';
import '../widgets/drawersettingpart_widget.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        height: 800,
        child: Drawer(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const DrawerSettingPartWidget(),
                    const SizedBox(
                      height: 32,
                    ),
                    const DotDivider(),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Other Locations"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Dhaka"),
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
                      height: 12,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Change Locations",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),

                        )),
                  ],
                ),
              ),
              // Add more drawer items here if needed
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WeatherHeaderWidget(onMorePressed: _openDrawer), // Pass the callback here
            const SizedBox(
              height: 8,
            ),
            const WeatherOverviewWidget(),
            const SizedBox(
              height: 16,
            ),
            const WeatherOverViewDailyWidget(),
            const SizedBox(
              height: 16,
            ),
            const WeatherDetailWidget(),
            const SizedBox(
              height: 32,
            ),
            const OutdoorConditionsWidget(),
          ],
        ),
      ),
    );
  }
}

