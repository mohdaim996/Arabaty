import 'package:flutter/material.dart';
import 'homePage.dart' as home;

class Reserve extends StatefulWidget {
  const Reserve({ Key? key }) : super(key: key);

  @override
  _ReserveState createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(r"مستخدم جديد"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              height: 50,
              width: 100,
            ),
             Text(r"الرجاء إدخال البيانات الشخصية"),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.info),
                hintText: '',
                labelText: 'الإسم الأول *')),padding: EdgeInsets.all(30) ,),
                Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.info),
                hintText: '',
                labelText: 'الإسم الأخير *')),padding: EdgeInsets.all(30) ,),
             Padding(child: TextFormField(
                decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: '05',
                labelText: 'رقم الجوال الخاص بك *')),padding: EdgeInsets.all(30) ,),
                Padding(child: home.langButton("تأكيد التسجيل", context,'/maps'),padding: EdgeInsets.all(5),),
              Padding (child: Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text("عربتي",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),padding: EdgeInsets.only(top:100),)
            //input form field 2,
            //login button,
            //creat account
          ],
        ),
      ),
    );
  }
}
