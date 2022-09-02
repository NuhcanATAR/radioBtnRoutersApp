import 'package:flutter/material.dart';

class onepage extends StatefulWidget {
  const onepage({super.key});

  @override
  State<onepage> createState() => _onepageState();
}

class _onepageState extends State<onepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("1. Seçenek Sayfası"),
      ),
    );
  }
}