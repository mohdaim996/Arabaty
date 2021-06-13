import 'package:flutter/material.dart';
import 'payment.dart';
class RentHours extends StatefulWidget {
  const RentHours({ Key? key }) : super(key: key);

  @override
  _RentHoursState createState() => _RentHoursState();
}

class _RentHoursState extends State<RentHours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تحديد وقت الإستخدام")),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20),child: Container(
              child: Text(r"حدد مدة الحجز"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              
              width: 100,
            ),),
             Text(r"ربع ساعة              12.5 ريال"),
              Padding(child: imageButton("assets/testmin.png", context,'/payment'),padding: EdgeInsets.all(5),),
               Text(r"نصف ساعة           25 ريال"),
              Padding(child: imageButton("assets/testmin.png", context,'/payment'),padding: EdgeInsets.all(5),),
              Text(r"ساعة                50 ريال"),
              Padding(child: imageButton("assets/testmin.png", context,'/payment'),padding: EdgeInsets.all(5),),
              Text(r"ساعتين                100 ريال"),
              Padding(child: imageButton("assets/testmin.png", context,'/payment'),padding: EdgeInsets.all(5),),
              Container(
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