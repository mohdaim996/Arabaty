import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;
import 'cartInfo.dart';
import 'dart:math';
class Payend extends StatefulWidget {
  const Payend({ Key? key }) : super(key: key);

  @override
  _PayendState createState() => _PayendState();
}

class _PayendState extends State<Payend> {
  @override
  Widget build(BuildContext context){
    return Arabaty.ScaffoldTemplateWithAppBar('العربية الخاصى بك', _body.call());
  }

Widget _body() {
    return Center(
      child: Column(
        children: [
          Container(
            //DRY
            child: Text(r"العربية الخاصة بك"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
            width: 100,
          ),
          Column(children: [
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
           Padding(
            child: Arabaty.langButton("إنهاء الخدمة", context, ''),
            padding: EdgeInsets.all(5),
          ),
          Padding(
              child: Arabaty.langButton("إضافة وقت", context, '/renthours'),
              padding: EdgeInsets.all(5)),
          Padding(
              child: Arabaty.langButton("إضافة عربة أخرى", context, '/maps'),
              padding: EdgeInsets.all(5)),
        ],
      ),])
    ); }
}