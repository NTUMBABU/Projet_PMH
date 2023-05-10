import 'package:flutter/material.dart';

class Chate extends StatefulWidget {
  const Chate({super.key});

  @override
  State<Chate> createState() => _ChateState();
}

class _ChateState extends State<Chate> {
  @override
  Widget build(BuildContext context) {
    
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow(int idx){
      return ListTile(
        leading: CircleAvatar(child: Text('$idx'),),
        title: Text('Item $idx', style: _biggerFont),
        trailing: Icon(Icons.dashboard),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('FedBack', style: TextStyle(color: Color(0xFFECEFF1))),
        backgroundColor: const Color(0xFF90A4AE),
      ),
      body: ListView.builder(
        itemCount: numItems * 2,
        padding: EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i){
          if(i.isOdd) return const Divider();
          final index = i ~/ 2 + 1;
          return _buildRow(index);
        },
      )
    );
  }
}