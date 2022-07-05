import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/AboutUs.dart';
import 'package:myapp/InfoPage.dart';
import 'package:myapp/LocationsPage.dart';
import 'package:myapp/HomePage.dart';
import 'package:myapp/MQTT/state/MQTTAppState.dart';
import 'package:myapp/MQTTView.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MQTTAppState>(
        create: (_) => MQTTAppState(),
        child: MQTTView(),
      ),
      ],
      child: MaterialApp( title: 'Smart Parking',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.deepPurple,
      primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Welcome To Smart Parking App ^-^'),),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _currentIndex=0;
  // ignore: prefer_const_constructors
  final List<Widget> _children = [LocationsPage(),HomePage(),InfoPage(),AboutUs(),MQTTView()]; 
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        // ignore: prefer_const_constructors
        animationDuration: Duration(milliseconds: 300),
        onTap: onTappedBar,
        index: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
        // ignore: prefer_const_constructors
        Icon(Icons.location_on_outlined),
        // ignore: prefer_const_constructors
        Icon(Icons.home),
        // ignore: prefer_const_constructors
        Icon(Icons.add_box_outlined),
        // ignore: prefer_const_constructors
        Icon(Icons.info_outline),
        // ignore: prefer_const_constructors
        Icon(Icons.chat),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
