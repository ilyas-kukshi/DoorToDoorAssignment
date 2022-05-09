import 'package:door_to_door/screens/dashboard_main/dashboard_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          color: Colors.black,
        )),
        primarySwatch: Colors.blue,
      ),
      home: const DashBoardMain(),
    );
  }
}
