import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),backgroundColor: Color(0xFF90A4AE),),
      body: Center(child: Text('center'),),
    );
  }
}