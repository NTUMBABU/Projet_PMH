import 'package:flutter/material.dart';

class Chate extends StatefulWidget {
  const Chate({super.key});

  @override
  State<Chate> createState() => _ChateState();
}

class _ChateState extends State<Chate> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
      Icons.ac_unit_rounded,
      size: 64.0,
      color: Colors.black,
    ));
  }
}