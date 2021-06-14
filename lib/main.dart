import 'package:arabaty/barCodeReader.dart';
import 'package:arabaty/cartInfo.dart';
import 'package:arabaty/login.dart';
import 'package:arabaty/maps.dart';
import 'package:arabaty/payment.dart';
import 'package:arabaty/register.dart';
import 'package:arabaty/ceck.dart';
import 'package:flutter/material.dart';
import 'renthours.dart';
import 'package:arabaty/payinfo.dart';
import 'homePage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';

dynamic userPositon;
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
        '/payinfo': (BuildContext context) => new Payinfo(),
        '/login': (BuildContext context) => new Login(),
        '/register': (BuildContext context) => new Register(),
        '/maps': (BuildContext context) => new MapView(),
        '/payend': (BuildContext context) => new Payend(),
        '/renthours': (BuildContext context) => new RentHours(),
        '/cart': (BuildContext context) => new CartInfo(),
        '/nfc': (BuildContext context) => new NFC()
      },
      title: 'Arabaty',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: r'عربتي'),
    );
  }
}
