import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart";
import 'package:user_location/user_location.dart';


class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  MapController mapController = MapController();
  dynamic userLocationOptions;
  // ADD THIS
  List<Marker> markers = [];
  @override
  Widget build(BuildContext context) {
    userLocationOptions = UserLocationOptions(
      context: context,
      mapController: mapController,
      markers: markers,
    );
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: Text(r"المحطات المتوفرة"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.0)),
              width: 150,
            ),
          ),
          Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              width: 300,
              height: 300,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(21.85553, 39.06006),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(21.85708, 39.06072),
                        builder: (ctx) => Container(
                          child: Icon(Icons.pin_drop),
                        ),
                      ), Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(21.85218, 39.06010),
                        builder: (ctx) => Container(
                          child: Icon(Icons.pin_drop),
                        ),
                      ),
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(21.85924, 39.05786),
                        builder: (ctx) => Container(
                          child: Icon(Icons.pin_drop),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: payButton("التالي", context,),
          ),
          Padding(
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              child: Text(
                "عربتي",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              height: 200,
            ),
            padding: EdgeInsets.only(top: 55),
          )
        ])));
  }
}

Widget payButton(String value, context){
  return OutlinedButton(
          onPressed: () => Navigator.pushNamed(context,'/payment'),
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
//sk.eyJ1IjoibW9oZGFpbTk5NiIsImEiOiJja3BvaGMxdWYwbThxMnZudWxpd2F1NmthIn0.BSiDsjx9T4hl0FFgbZGLCQ
