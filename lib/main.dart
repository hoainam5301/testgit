import 'package:flutter/material.dart';
import 'package:storedelivery/screens/langding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StoreDelivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage() ,
    );
  }
}

