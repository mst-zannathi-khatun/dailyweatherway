import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios, size: 28,)),
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.start, // Centers the hint text
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none, // Removes the underline
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice_sharp, size: 28,)),
            ],),
          ),
          Spacer(),
          Text("Enter a Location Name.", style: TextStyle(fontSize: 18),),
          Spacer(),
        ],
      ),
    );
  }
}
