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
        Padding(
              child:Image.asset ("arabatylogo.jpg",height: 300,width: 500,),
              padding: EdgeInsets.all(0)),
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
