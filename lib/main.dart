import 'package:flutter/material.dart';
import 'package:hr_management/color.dart';
import 'package:hr_management/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // rgba(14,67,117,255)

        primarySwatch:
            MaterialColor(Color.fromRGBO(14, 67, 117, 1).value, color),
        // primarySwatch: const Color.fromARGB(14,67,117,255),
      ),
      home: const Home(),
    );
  }
}
