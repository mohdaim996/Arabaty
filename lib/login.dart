import 'package:flutter/material.dart';
import 'homePage.dart' as home;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(r"تسجيل الدخول"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              height: 50,
              width: 100,
            ),
             Text(r"أدخل رقم الجوال"),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: '05',
                labelText: 'رقم الجوال الخاص بك *')),padding: EdgeInsets.all(30) ,),
                Padding(child: home.langButton("التسجيل الآن", context,),padding: EdgeInsets.all(5),),
              Padding(child: home.langButton("إنشاء حساب", context),padding: EdgeInsets.only(top:250)), 
              Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text("عربتي",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),
            //input form field 2,
            //login button,
            //creat account
          ],
        ),
      ),
    );
  }
}
