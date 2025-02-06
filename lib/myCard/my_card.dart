import 'package:flutter/material.dart';


class MiCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mi Card")),
        body: Container(child: Text("Hello World")),
      ),
    );
  }
}