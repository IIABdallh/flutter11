import 'package:flutter/material.dart';
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
  GoogleMapController? gmc;
  CameraPosition cameraPosition =
      CameraPosition(target: LatLng(31.042712, 31.358196), zoom: 20);

  List<Marker> markers = [
    Marker(markerId: MarkerId("1"), position: LatLng(31.042712, 31.358196)),
    Marker(
        markerId: MarkerId("2"),
        position: LatLng(31.04103654241518, 31.35872382670641)),
    Marker(
        markerId: MarkerId("3"),
        position: LatLng(31.043226905076615, 31.35645568370819)),
    Marker(
        markerId: MarkerId("4"),
        position: LatLng(31.03525374285082, 31.356792971491817)),
  ];

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
                  onTap: (LatLng latLng) {
                    //بيجيبلي احداثيات اي مكان علي خريطه عند ضغط عاي مكان
                    print("========================");
                    print(latLng.latitude);
                    print(latLng.longitude);
                    print("========================");
                    markers.add(Marker(
                        markerId: MarkerId("${latLng.latitude}"),
                        position: LatLng(latLng.latitude, latLng.longitude)));
                    setState(() {});
                  },
                  markers: markers.toSet(),
                  initialCameraPosition: cameraPosition,
                  mapType: MapType.satellite,
                  onMapCreated: (controller) {
                    gmc = controller;
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
