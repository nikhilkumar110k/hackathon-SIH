import 'package:flutter/material.dart';
import 'package:sihlegalaidhackathon/form1.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {


  String _selectedLocation='harassment case';

  final List<String> _locations = ['harassment case', 'assault case', 'domestic violence', 'murder'];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DropdownButton(
            hint: const Text('Please choose a case type'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue!;
                if(_selectedLocation==newValue){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Example1(),
                  ),
                );}
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                value: location,
                child: Text(location),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}



