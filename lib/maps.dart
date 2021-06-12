import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart";
import 'main.dart' as main;
import 'dart:math';
import 'components.dart' as Arabaty;

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  double doubleInRange(num start, num end) =>
      Random().nextDouble() * (end - start) + start;
  @override
  Widget build(BuildContext context) {
    print(main.userPositon);
    return Arabaty.ScaffoldTemplateWithAppBarNoLogo(
        'المحطات المتوفرة', _body.call());
  }

  Widget _body() {
    return Center(
        child: Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center:
                LatLng(main.userPositon.latitude, main.userPositon.longitude),
            zoom: 12.5,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
              markers: [
                //DRY the markers
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                      (main.userPositon.longitude +
                          doubleInRange(0, 0.0399999))),
                  builder: (ctx) => Container(
                    child: Icon(Icons.pin_drop),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                      (main.userPositon.longitude +
                          doubleInRange(0, 0.0399999))),
                  builder: (ctx) => Container(
                    child: Icon(Icons.pin_drop),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                      (main.userPositon.longitude +
                          doubleInRange(0, 0.0399999))),
                  builder: (ctx) => Container(
                    child: Icon(Icons.pin_drop),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                      (main.userPositon.longitude +
                          doubleInRange(0, 0.0399999))),
                  builder: (ctx) => Container(
                    child: Icon(Icons.pin_drop),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      (main.userPositon.latitude + doubleInRange(0, 0.0399999)),
                      (main.userPositon.longitude +
                          doubleInRange(0, 0.0399999))),
                  builder: (ctx) => Container(
                    child: Icon(Icons.pin_drop),
                  ),
                )
              ],
            ),
          ],
        ),
        Positioned(
            //move to appbar
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
            child: Arabaty.startScanner(
                'التالي', context, '/renthours', scanQRCode),
            bottom: 20,
            left: ((MediaQuery.of(context).size.width) / 2) - 133),
      ],
    ));
  }

  Future<void> scanQRCode() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      if (!mounted) return;

      setState(() {
        Navigator.pushNamed(context, '/renthours');
      });
    } catch (PlatformException) {
      Navigator.pushNamed(context, '/renthours');
    }
  }
}
