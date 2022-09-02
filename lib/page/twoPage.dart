import 'package:flutter/material.dart';

class twopage extends StatefulWidget {
  const twopage({super.key});

  @override
  State<twopage> createState() => _twopageState();
}

class _twopageState extends State<twopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("2. Seçenek Sayfası"),
      ),
    );
  }
}
