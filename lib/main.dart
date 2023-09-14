import 'package:flutter/material.dart';
import 'package:sihlegalaidhackathon/information.dart';
void main() {
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'legal aid application';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('legal law advisor'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}






