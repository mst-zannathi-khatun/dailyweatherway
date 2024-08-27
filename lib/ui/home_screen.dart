import 'package:flutter/material.dart';
import '../widgets/drawerchangelocationpart_widget.dart';
import '../widgets/drawerlastpart_widget.dart';
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
      drawer: SizedBox(
        height: 800,
        child: Drawer(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    DrawerSettingPartWidget(),
                    SizedBox(
                      height: 16,
                    ),
                    DrawerChangeLocationPart(),
                    SizedBox(
                      height: 16,
                    ),
                    DrawerLastPartWidget(),
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
            WeatherHeaderWidget(onMorePressed: _openDrawer),
            // Pass the callback here
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
