import 'dart:ui';

import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Arabaty.ScaffoldTemplateWithAppBar("صفحة الدفع", _body.call());
  }

  Widget _body() {
    return Center(
      child: Column(
        children: [
          Container(
            //DRY
            child: Text(r"صفحة الدفع"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
            width: 100,
          ),
          Text(r"الرجاء إختيار طريقة الدفع"),
          Padding(
            child: imageButton("assets/mada.png", context, '/payinfo'),
            padding: EdgeInsets.all(5),
          ),
          Padding(
              child: imageButton("assets/visa.png", context, '/payinfo'),
              padding: EdgeInsets.all(5)),
          Padding(
              child: imageButton("assets/stcpay.png", context, ''),
              padding: EdgeInsets.all(5)),
          Padding(
              child: imageButton("assets/applepay.png", context, ''),
              padding: EdgeInsets.all(5)),
          Padding(
              child: imageButton("assets/nfc.png", context, ''),
              padding: EdgeInsets.all(5)),
        ],
      ),
    );
  }
}

class Payinfo extends StatefulWidget {
  const Payinfo({Key? key}) : super(key: key);

  @override
  _PayinfoState createState() => _PayinfoState();
}

class _PayinfoState extends State<Payinfo> {
  @override
  Widget build(BuildContext context) {
    return Arabaty.ScaffoldTemplateWithAppBar('الدفع', _body.call());
  }

  Widget _body() {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(r"الدفع"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
            height: 50,
            width: 100,
          ),
          Text(r"الرجاء إدخال بيانات بطاقة مدى"),
          Padding(
            child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.format_list_numbered),
                    hintText: '',
                    labelText: 'رقم البطاقة *')),
            padding: EdgeInsets.all(20),
          ),
          Padding(
            child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.info_outline),
                    hintText: '',
                    labelText: 'الإسم على البطاقة *')),
            padding: EdgeInsets.all(20),
          ),
          Padding(
            child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.date_range),
                    hintText: '',
                    labelText: 'تاريخ الإنتهاء *')),
            padding: EdgeInsets.all(20),
          ),
          Padding(
            child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.format_list_numbered),
                    hintText: '- - -',
                    labelText: 'ccv *')),
            padding: EdgeInsets.all(20),
          ),
          Padding(
            child: Arabaty.langButton('الدفع', context, '/payend'),
            padding: EdgeInsets.all(5),
          ),
        ],
      ),
    );
  }
}

Widget imageButton(String value, context, String path) {
  return OutlinedButton(
    onPressed: () => Navigator.pushNamed(
      context,
      path,
    ),
    child: Container(
      child: Center(
        child: Image.asset(
          value,
          width: 100,
          height: 100,
        ),
      ),
      width: 250,
      height: 75,
    ),
    style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xff01A0C6),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}
