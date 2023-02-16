import 'package:flutter/material.dart';
import 'package:flutter_foodorder/screens/body.dart';
import 'package:flutter_svg/svg.dart';

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
            text: const TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                children: [
              TextSpan(
                  text: "Food", style: TextStyle(color: Colors.greenAccent)),
              TextSpan(text: "Order", style: TextStyle(color: Colors.green))
            ])),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
      ]),
      body: Body(),
    );
  }
}
