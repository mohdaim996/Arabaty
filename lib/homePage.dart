import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Arabaty.ScaffoldTemplate(_body.call());
  }

  Widget _body() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
        ),
        Icon(
          Icons.wheelchair_pickup,
          size: 120,
          color: Color(0xff01A0C6),
        ), //get logo
        Arabaty.langText(r'إختار اللغة'),
        Arabaty.langText('Choose Language'),
        Container(
          height: 10,
        ),
        Arabaty.langButton('العربية', context, '/login'),
        Arabaty.langButton('English', context, ''),
        Arabaty.langButton(r'Español', context, ''),
      ],
    ));
  }
}
