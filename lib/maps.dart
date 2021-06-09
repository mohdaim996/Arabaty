import 'dart:async';
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
      body: Center(child:Column(children:[Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        width: 300,
        height: 300,
        child: FlutterMap(
    options: MapOptions(
      center: LatLng(23, 45),
      zoom: 13.0,
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: ['a', 'b', 'c']
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(23, 45),
            builder: (ctx) =>
            Container(
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    ],
  )),])
    ));
  }
}
//sk.eyJ1IjoibW9oZGFpbTk5NiIsImEiOiJja3BvaGMxdWYwbThxMnZudWxpd2F1NmthIn0.BSiDsjx9T4hl0FFgbZGLCQ
