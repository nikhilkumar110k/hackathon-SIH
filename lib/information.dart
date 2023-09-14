import 'package:flutter/material.dart';
import 'package:sihlegalaidhackathon/main.dart';
import 'package:sihlegalaidhackathon/forms.dart';

class MyCustomForm extends StatefulWidget {
  //final MyCustomForm({super.key});
  //Widget activeScreen= StartScreen(switchScreen);

//set State(){
  //const
//}
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<MyCustomForm> {
  var activeScreen = MyCustomForm();
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
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
            keyboardType: TextInputType.datetime,
          ),
          Container(
            padding: const EdgeInsets.only(left: 130.0, top: 40.0),
            child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
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