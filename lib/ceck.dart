import 'package:flutter/material.dart';
import 'components.dart' as Arabaty;
class ceck extends StatefulWidget {
  const ceck({ Key? key }) : super(key: key);

  @override
  _ceckState createState() => _ceckState();
}

class _ceckState extends State<ceck> {
  @override
 Widget build(BuildContext context) {
    return Arabaty.ScaffoldTemplateWithAppBar('انشاء حساب', _body.call());
  }

  Widget _body() {
    return Center(
      child: Column(
        children: [
          Container(//DRY
            child: Text(r"صفحة التحقق"),
            alignment: Alignment.center,
            decoration: BoxDecoration(  
                color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
            width: 100,
          ),
          Text(r"الرجاء إدخال رمز التحقق"),
          Padding(//DRY
            child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.looks_4_sharp),
                    hintText: '- - - -',
                    labelText: 'رمز التحقق *')),
            padding: EdgeInsets.all(30),
          ),
          Padding(
            child: Arabaty.langButton("تأكيد الرمز", context, '/maps'),
            padding: EdgeInsets.all(5),
          ),
          Padding(
              child: Arabaty.langButton("إعادة إرسال الرمز", context, '/ceck'),
              padding: EdgeInsets.all(5)),
        ],
      ),
    );
  }
}
