import 'package:flutter/material.dart';
import 'forms.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'legal aid application';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
            keyboardType: TextInputType.datetime,
          ),
          Container(
              padding: const EdgeInsets.only(left: 130.0, top: 40.0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Example(),
                    ),
                  );
                }
              ),
          ),
        ],
      ),
    );
  }
}



