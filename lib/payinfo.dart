import 'package:flutter/material.dart';
import 'homePage.dart' as home;
import 'login.dart'as login;


class Payinfo extends StatefulWidget {
  const Payinfo({ Key? key }) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payinfo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("بيانات الدفع")),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(r"الدفع"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              height: 50,
              width: 100,
            ),
             Text(r"الرجاء إدخال بيانات بطاقة مدى"),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.format_list_numbered),
                hintText: '',
                labelText: 'رقم البطاقة *')),padding: EdgeInsets.all(30) ,),
                Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.info_outline),
                hintText: '',
                labelText: 'الإسم على البطاقة *')),padding: EdgeInsets.all(30) ,),
                Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.date_range),
                hintText: '',
                labelText: 'تاريخ الإنتهاء *')),padding: EdgeInsets.all(30) ,),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.format_list_numbered),
                hintText: '- - -',
                labelText: 'ccv *')),padding: EdgeInsets.all(30) ,),
                Padding(child: login.logButton("الدفع", context,),padding: EdgeInsets.all(5),),
              Padding (child: Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text("عربتي",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),padding: EdgeInsets.only(top:0.005),)
            //input form field 2,
            //login button,
            //creat account
          ],
        ),
      ),
    );
  }
}