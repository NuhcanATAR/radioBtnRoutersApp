import 'package:flutter/material.dart';

class threepage extends StatefulWidget {
  const threepage({super.key});

  @override
  State<threepage> createState() => _threepageState();
}

class _threepageState extends State<threepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("3. Seçenek Sayfası"),
      ),
    );
  }
}
