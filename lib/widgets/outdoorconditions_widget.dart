import 'package:flutter/material.dart';

class OutdoorConditionsWidget extends StatelessWidget {
  const OutdoorConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 4,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(children: [
                Icon(Icons.car_crash, size: 40, color: Colors.blue,),
                SizedBox(width: 4,),
                Text("Driving difficulty", style: TextStyle(fontSize: 20),),
                Spacer(),
                Text("Wet", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],),
              Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              Row(children: [
                Icon(Icons.air_sharp, size: 40, color: Colors.cyan,),
                SizedBox(width: 4,),
                Text("Pollen", style: TextStyle(fontSize: 20),),
                Spacer(),
                Text("None", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],),
              Divider(
                // Divider between the rows
                color: Colors.grey,
                thickness: 1,
                indent: 42,
                endIndent: 8,
              ),
              Row(children: [
                Icon(Icons.snowshoeing, size: 40, color: Colors.green,),
                SizedBox(width: 4,),
                Text("Running", style: TextStyle(fontSize: 20),),
                Spacer(),
                Text("Very Poor", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],),
            ],),
        ),
      ),
    );
  }
}
