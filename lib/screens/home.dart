import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            text: TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                children: [
              TextSpan(
                  text: "Food", style: TextStyle(color: Colors.greenAccent)),
              TextSpan(text: "Order", style: TextStyle(color: Colors.green))
            ])),
        actions: [],
      ),
    );
  }
}
