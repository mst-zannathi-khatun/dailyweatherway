import 'package:flutter/material.dart';

import '../style/custom_icon_style.dart';
import '../style/text_style.dart';
import 'moreelevatedbutton_widget.dart';

class WeatherOverviewWidget extends StatelessWidget {
  const WeatherOverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        color: Colors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIcons.location,
                   Text("Rampura", style: CustomTextStyles.weatherLocation),
                ],
              ),
              const Text("Sun, 18 August 10.45 am"),
              const SizedBox(
                height: 8,
              ),
               Row(
                children: [
                  CustomIcons.cloud,
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "27\u00B0",
                    style: TextStyle(fontSize: 50),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("Rain Shower"),
                      Text("27\u00B0 / 25\u00B0"),
                      Text("Feels like 31\u00B0"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(
                children: [
                  Text("10 am"),
                  Spacer(),
                  Text("11 am"),
                  Spacer(),
                  Text("12 pm"),
                  Spacer(),
                  Text("1 pm"),
                  Spacer(),
                  Text("2 pm"),
                ],
              ),
               Row(
                children: [
                  CustomIcons.cloud,
                  Spacer(),
                  CustomIcons.cloud,
                  Spacer(),
                  CustomIcons.cloud,
                  Spacer(),
                  CustomIcons.cloud,
                  Spacer(),
                  CustomIcons.cloud,
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.water_drop,
                    color: Color(0xFF00BFFF),
                    size: 20,
                  ),
                  Text("30%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_outlined,
                    color: Color(0xFF00BFFF),
                    size: 20,
                  ),
                  Text("40%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_rounded,
                    color: Color(0xFF00BFFF),
                    size: 20,
                  ),
                  Text("50%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_outlined,
                    color: Color(0xFF00BFFF),
                    size: 20,
                  ),
                  Text("60%"),
                  Spacer(),
                  Icon(
                    Icons.water_drop_rounded,
                    color: Color.fromARGB(255, 0, 191, 255),
                    size: 20,
                  ),
                  Text("80%"),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: MoreElevatedButtonWidget(onPressed: (){},),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

