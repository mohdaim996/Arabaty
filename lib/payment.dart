import 'dart:ui';

import 'package:flutter/material.dart';
import 'homePage.dart' as home;


class Payment extends StatefulWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(r"صفحة الدفع"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              
              width: 100,
            ),
             Text(r"الرجاء إختيار طريقة الدفع"),
              Padding(child: imageButton("assets/mada.png", context,'/payinfo'),padding: EdgeInsets.all(5),),
              Padding(child: imageButton("assets/visa.png", context,'/payinfo'),padding: EdgeInsets.all(5)), 
              Padding(child: imageButton("assets/stcpay.png", context,'/payinfo'),padding: EdgeInsets.all(5)),
              Padding(child: imageButton("assets/applepay.png", context,'/payinfo'),padding: EdgeInsets.all(5)),
              Padding (child: Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text("عربتي",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),padding: EdgeInsets.only(top:150),)
            //input form field 2,
            //login button,
            //creat account
          ],
        ),
      ),
    );
  }
}

class CardInfo extends StatefulWidget {
  const CardInfo({ Key? key }) : super(key: key);

  @override
  _CardInfoState createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  @override
  Widget build(BuildContext context) {
    return Container()
  ;}
}
Widget imageButton(String value, context,String path){
  return OutlinedButton(
          onPressed: () => Navigator.pushNamed(context, path,),
          child: Container(
            child: Center(
                child:Image.asset(value,width: 100,height: 100,),),
            width: 250,
            height: 75,
          ),
          style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xff01A0C6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0))),
        );
}
