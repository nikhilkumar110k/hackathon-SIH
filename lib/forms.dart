import 'package:flutter/material.dart';
class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {



  List<String> _locations = ['harassement case', 'assault case', 'domestic violence', 'murder']; // Option 2
  late String _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DropdownButton(
            hint: Text('Please choose a case type'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue!;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

