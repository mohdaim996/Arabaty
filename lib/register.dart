import 'package:flutter/material.dart';
import 'homePage.dart' as home;

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("التحقق من رقم الجوال")),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(r"صفحة التحقق"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              
              width: 100,
            ),
             Text(r"الرجاء إدخال رمز التحقق"),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.looks_4_sharp),
                hintText: '- - - -',
                labelText: 'رمز التحقق *')),padding: EdgeInsets.all(30) ,),
                Padding(child: home.langButton("تأكيد الرمز", context,'/maps'),padding: EdgeInsets.all(5),),
              Padding(child: home.langButton("إعادة إرسال الرمز", context,'/register'),padding: EdgeInsets.all(5)), 
              Padding (child: Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text("عربتي",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),padding: EdgeInsets.only(top:205),)
            //input form field 2,
            //login button,
            //creat account
          ],
        ),
      ),
    );
  }
}
