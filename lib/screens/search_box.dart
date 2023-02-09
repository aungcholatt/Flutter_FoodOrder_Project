import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey)),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      child: TextField(
        onChanged: (val) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/magnify.svg'),
            hintText: "Search Here"),
      ),
    );
  }
}
