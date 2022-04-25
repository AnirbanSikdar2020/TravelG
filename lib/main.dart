import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/navigation.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Travelजी", home: Scaffold(body: BottomNavBar()));
  }
}
