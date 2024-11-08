import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade800,
        title:  Text("Pro Multimedia",style: TextStyle(color: Colors.blue.shade50),),
      ),
      body:  const Center(
        child: Text("Assessment by\nCAKSTON CALVIN",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
      )
    );
  }
}
