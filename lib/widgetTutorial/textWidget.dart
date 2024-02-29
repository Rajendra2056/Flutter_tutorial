import 'package:flutter/material.dart';

class WidgetTutorial extends StatelessWidget {
  const WidgetTutorial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tutorial"),
        ),
        body: Container(
          child: const Text(
              'This is flutter widdget. It helps to control the system in your app'),
        ),
      ),
    );
  }
}
