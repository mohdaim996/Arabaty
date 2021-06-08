import 'package:arabaty/barCodeReader.dart';
import 'package:arabaty/payment.dart';
import 'package:arabaty/reserve.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(title: r'Arabty'),
        '/barCodeReader': (BuildContext context) => new BarCodeReader(),
        '/reserve': (BuildContext context) => new Reserve(),
        '/payment': (BuildContext context) => new Payment(),


      },
      title: 'Arabaty',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: r'عربتي'),
    );
  }
}
