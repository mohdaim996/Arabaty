import 'package:arabaty/barCodeReader.dart';
import 'package:arabaty/cartInfo.dart';
import 'package:arabaty/login.dart';
import 'package:arabaty/maps.dart';
import 'package:arabaty/payment.dart';
import 'package:arabaty/register.dart';
import 'package:arabaty/ceck.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:geolocator/geolocator.dart';

dynamic userPositon;
void main(List<String> args) async {
  
  runApp(MyApp());
  userPositon = await Geolocator.getCurrentPosition();
  print(userPositon);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(title: r'Arabty'),
        '/barCodeReader': (BuildContext context) => new BarCodeReader(),
        '/ceck': (BuildContext context) => new ceck(),
        '/payment': (BuildContext context) => new Payment(),
        '/login': (BuildContext context) => new Login(),
        '/register': (BuildContext context) => new Register(),
        '/maps': (BuildContext context) => new MapView(),
        '/cartInfo': (BuildContext context) => new CartInfo(),
      },
      title: 'Arabaty',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: r'عربتي'),
    );
  }
}
