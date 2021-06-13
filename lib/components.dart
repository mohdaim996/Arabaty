import 'package:flutter/material.dart';
import 'Package:flutter/src/widgets/framework.dart';
Widget ScaffoldTemplateWithAppBar(String title, Widget body) {
  return Scaffold(
      extendBody: true,
      bottomSheet: myLogo,
      appBar: AppBar(
        backgroundColor:Color(0xff01A0C6),
        title: Center(
          child: Text(title),
          
        ),
      ),
      body: body);
}

Widget ScaffoldTemplateWithAppBarNoLogo(String title, Widget body) {
  return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: body);
}

Widget ScaffoldTemplate(Widget body) {
  return Scaffold(bottomNavigationBar: myLogo, body: body);
}

final Widget myLogo = Container(
  margin: EdgeInsets.only(bottom: 10),
  alignment: Alignment.bottomCenter,
  child: Text(
    'عربتي',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
  ),
  height: 50,
);

Widget langText(String value) {
  return Text(
    value,
    style: TextStyle(
        fontSize: 30,
        fontFamily: 'Pragmatica',
        color: Color(0xff616668),
        fontWeight: FontWeight.bold),
  );
}

Widget langButton(String value, context, String path) {
  //Change name
  return OutlinedButton(
    onPressed: () => Navigator.pushNamed(context, path),
    child: Container(
      child: Center(
          child: Text(
        value,
        style: TextStyle(color: Colors.white, fontSize: 30),
      )),
      width: 250,
      height: 75,
    ),
    style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xff01A0C6),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

Widget startScanner(String value, context, String path, Function() qr) {
  //Change name
  return OutlinedButton(
    onPressed: qr,
    child: Container(
      child: Center(
          child: Text(
        value,
        style: TextStyle(color: Colors.white, fontSize: 30),
      )),
      width: 250,
      height: 75,
    ),
    style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xff01A0C6),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))),
  );
}

  