import 'package:flutter/material.dart';
import 'package:flutter_foodorder/screens/category_list.dart';
import 'package:flutter_foodorder/screens/search_box.dart';
import 'package:flutter_foodorder/screens/image_slider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(),
          ImageSlider(),
          CategoryList(),
        ],
      ),
    );
  }
}
