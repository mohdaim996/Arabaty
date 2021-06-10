import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context){
    return Arabaty.ScaffoldTemplateWithAppBar('انشاء حساب', _body.call());
  }
  Widget _body(){
    return  Center(
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
                Padding(child: Arabaty.langButton("تأكيد التسجيل", context,'/maps'),padding: EdgeInsets.all(5),),
             
          ],
        ),
      );
  }
}
//Check the use of padding on lang buttons
