import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;
import 'dart:math';

int id = 1;
int battery = 100;
int time = 12;

class CartInfo extends StatefulWidget {
  CartInfo({Key? key}) : super(key: key);

  @override
  _CartInfoState createState() => _CartInfoState();
}

class _CartInfoState extends State<CartInfo> {
  @override
  Widget build(BuildContext context) {
    return Arabaty.ScaffoldTemplateWithAppBar("بيانات المركبة", _body.call());
  }

  Widget _body() {
    return Column(children: [
      Center(
          child: Text(
        'رقم المركبة: $id',
        style: TextStyle(fontSize: 25),
      )),
      Center(
          child: Stack(
        children: [
          Transform.rotate(
            angle: 90 * pi / 180,
            child: Icon(
              Icons.battery_full,
              color: Colors.green,
              size: 250,
            ),
          ),
          Positioned(
            child: Text(
              '${battery.toString()}%',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            left: 90,
            top: 110,
          ),
        ],
      )),
      Center(
          child: Text(
        'الوقت المتبقي: $time ساعة',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 25),
      )),
      Arabaty.langButton('التالي', context, '/renthours')
    ]);
  }
}
