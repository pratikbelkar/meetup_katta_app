import 'package:flutter/material.dart';
import 'package:meetup_katta_app/screens.dart/first.dart';

void main() {
  runApp(const Meetup_katta());
}

// ignore: camel_case_types
class Meetup_katta extends StatelessWidget {
  const Meetup_katta({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}
