import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapD extends StatefulWidget {
  const MapD({super.key});

  @override
  State<MapD> createState() => _MapDState();
}

class _MapDState extends State<MapD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: FlutterMap(
          options: MapOptions(center: LatLng(-20.2661, 57.5152), zoom: 10.25),
          layers: [
            TileLayerOptions(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
            MarkerLayerOptions(markers: [
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.2661, 57.5152),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.5053374, 57.4206371),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.21496, 57.7617617),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.0909079, 57.69259),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.0010786, 57.6209844),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-20.1771057, 57.4410493),
                  builder: (ctx) => Container(
                          child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ))),
            ]),
          ],
        ),
      ),
    );
  }
}