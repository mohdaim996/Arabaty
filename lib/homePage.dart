import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title}) ;


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
        ),Icon(Icons.wheelchair_pickup,size: 120,color: Color(0xff01A0C6), ),
        langText(r'إختار اللغة'),
        langText('Choose Language'),
        Container(
          height: 10,
        ),
        langButton(r'العربية'),
        langButton('English'),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child:  Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
          height: 200,
        ),
      ],
    )));
  }
}


Widget langText(String value){
  return Text(
          value,
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Pragmatica',
              color: Color(0xff616668),
              fontWeight: FontWeight.bold),
        );
}

Widget langButton(String value){
  return OutlinedButton(
          onPressed: () {},
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0))),
        );
}