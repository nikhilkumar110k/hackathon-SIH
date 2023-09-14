import 'package:flutter/material.dart';
import 'package:sihlegalaidhackathon/forms.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<StatefulWidget> createState() => _Example1State();
}

class _Example1State extends State<Example1> {


  String _selectedLocation='354';

  final List<String> _locations = ['354', '354A' ,'498A','509', 'IPC section 352', '504', '302','reselect your case type'];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:
          DropdownButton(
            hint: const Text('Please choose your charges'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue!;
                if(_selectedLocation==newValue){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Example1(),
                      ),
                );
                }
                if(_selectedLocation=='reselect your case type'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Example(),
                    ),
                  );
                }

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
