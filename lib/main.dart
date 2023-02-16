import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_foodorder/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foodorder/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FirebaseService.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Home());
  }
}
