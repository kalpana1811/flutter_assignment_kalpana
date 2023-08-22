import 'package:flutter/material.dart';

class Comingsoon extends StatefulWidget {
  const Comingsoon({super.key});

  @override
  State<Comingsoon> createState() => _ComingsoonState();
}

class _ComingsoonState extends State<Comingsoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(
        "Coming soon",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
