import 'package:flutter/material.dart';

class IAmPoorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("I am Poor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
        centerTitle: true,
      ),
      body: Center(

        child: Container(

          padding: EdgeInsets.all(40),
          margin: EdgeInsets.all(10),

          child: Image.asset('assets/icons/poor.png'),
        ),
      ),
    );
  }
}
