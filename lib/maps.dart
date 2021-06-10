import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart";
import 'homePage.dart' as home;
import 'package:geolocator/geolocator.dart' as test;
import 'main.dart' as main;
import 'dart:math';

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
  double doubleInRange(num start, num end) =>
      Random().nextDouble() * (end - start) + start;
  @override
  Widget build(BuildContext context) {
    print(main.userPositon);
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: LatLng(
                    main.userPositon.latitude, main.userPositon.longitude),
                zoom: 12.5,
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
                      point: LatLng(
                          (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                          (main.userPositon.longitude + doubleInRange(0, 0.0399999))),
                      builder: (ctx) => Container(
                        child: Icon(Icons.pin_drop),
                      ),
                    ),
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng((main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                          (main.userPositon.longitude + doubleInRange(0, 0.0399999))),
                      builder: (ctx) => Container(
                        child: Icon(Icons.pin_drop),
                      ),
                    ),
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng((main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                          (main.userPositon.longitude + doubleInRange(0, 0.0399999))),
                      builder: (ctx) => Container(
                        child: Icon(Icons.pin_drop),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    child: Text(r"المحطات المتوفرة"),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.0)),
                    height: 30,
                    width: 120,
                  ),
                ),
                top: 20,
                left: ((MediaQuery.of(context).size.width) / 2) - 60),
            Positioned(
                child: home.testqr('التالي', context, '/qrcode'),
                bottom: 20,
                left: ((MediaQuery.of(context).size.width) / 2) - 133),
          ],
        )));
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
