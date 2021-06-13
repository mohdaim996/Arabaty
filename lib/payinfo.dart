import 'dart:js';

import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;
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
          Text(r"معلومات المركبة"),
           Padding(
            child: Arabaty.langButton("إنهاء الخدمة", context, ''),
            padding: EdgeInsets.all(5),
          ),
          Padding(
              child: Arabaty.langButton("إضافة وقت", context, ''),
              padding: EdgeInsets.all(5)),
          Padding(
              child: Arabaty.langButton("إضافة عربة أخرى", context, ''),
              padding: EdgeInsets.all(5)),
        ],
      ),
    ); }
}