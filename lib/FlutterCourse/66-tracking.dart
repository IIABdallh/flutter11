import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  StreamSubscription<Position>? positionStream;
  GoogleMapController? gmc;
  CameraPosition cameraPosition =
      CameraPosition(target: LatLng(31.042712, 31.358196), zoom: 20);

  List<Marker> markers = [];

  Future<void> initstream() async {
    
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        print("Please enable location services");
        return;
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied) {
        print("Location permission denied");
        return;
      }
      if (permission == LocationPermission.whileInUse) {
        positionStream =
            Geolocator.getPositionStream().listen((Position? position) {
          markers.add(Marker(
            markerId: MarkerId("1"),
            position: LatLng(position!.latitude, position.longitude),
          ));
          gmc!.animateCamera(CameraUpdate.newLatLng(
              LatLng(position.latitude, position.longitude)));
          setState(() {});
        });
      }
    
  }

  @override
  void initState() {
    initstream();
    super.initState();
  }

  @override
  void dispose() {
    positionStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: GoogleMap(
                  markers: markers.toSet(),
                  initialCameraPosition: cameraPosition,
                  mapType: MapType.satellite,
                  onMapCreated: (mapcontroller) {
                    gmc = mapcontroller;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
