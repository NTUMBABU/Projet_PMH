import 'package:flutter/material.dart';
import 'homeScreen/Aide.dart';
import 'homeScreen/Map.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final kTabPages = <Widget>[Aide(),MapD()];
    final kTabs = <Tab>[
      const Tab(icon: Icon(Icons.cloud), text: 'Aide'),
      const Tab(icon: Icon(Icons.alarm), text: 'Cherchez')
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home', style: TextStyle(color: Color(0xFFECEFF1),
              ),),
          backgroundColor: const Color(0xFF90A4AE),
          bottom: TabBar(
            tabs: kTabs, 
            dividerColor: const Color(0xFF293238),
            indicatorColor: const Color(0xFF293238),
            labelColor: const Color(0xFFECEFF1),
          ),
        ),
        body: TabBarView(children: kTabPages)
      ),
    );
  }
}
