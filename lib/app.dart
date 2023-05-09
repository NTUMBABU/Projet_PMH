import 'package:apps/screen/camera.dart';
import 'package:apps/screen/chate.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  static const _kTabPages = <Widget>[Home(),Camera(),Chate(),];

  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.home_sharp), text: 'Home',),
    Tab(icon: Icon(Icons.camera_alt_sharp),text: 'Camera',),
    Tab(icon: Icon(Icons.chat_bubble),text: 'Chat',),
  ];

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: _kTabPages.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: _kTabPages, 
        ),
        bottomNavigationBar: Material(
          color: Color(0xFFECEFF1),
          child: TabBar(
            tabs: _kTabs,
            controller: _tabController,
            labelColor:const Color(0xFF78909C),
          ),
        ),
      ),
    );
  }
}