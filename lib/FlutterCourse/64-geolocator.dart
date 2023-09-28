import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double long1 = 35, lat1 = 37;
  double long2 = 39, lat2 = 30;
  StreamSubscription<Position>? positionStream;
  geoCurrentLocationApp() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //false (مش شغال) && true => (شغال)  بتشوف لو كان لوكاشن شغال علي موبيل ولا لا
    if (serviceEnabled == false) {
      print("plz open location");
    } else {
      print("location is open");
    }
    permission = await Geolocator.checkPermission();
    //بنشوف لو كان المستخدم سامح للتطبيق لو يقدر يتوصل مع لوكاشن
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      print("denied");
    }
    if (permission == LocationPermission.whileInUse) {
      print("while in use");
      Position position = await Geolocator.getCurrentPosition();
      //بيحدد موقع المستخدم بنسبه للي خطوط طول و دوائر العرض
      print("_________________________________");
      print(position.latitude);
      print(position.longitude);
      print("_________________________________");
      positionStream =
          Geolocator.getPositionStream().listen((Position? position) {
        //بنستخدمه للتتبع
        print("_________________________________");
        print(position!.latitude);
        print(position.longitude);
        print("_________________________________");
      });

      double distanceInMeters =
      //بتحسب المسافه بين نقطتين 
          Geolocator.distanceBetween(lat1, long1, lat2, long1);
      print("_________________________________");

      print(distanceInMeters / 1000);
      print("_________________________________");
    }
  }

  @override
  void initState() {
    geoCurrentLocationApp();
    super.initState();
  }

  @override
  void dispose() {
    if (positionStream != null) {
      positionStream!.cancel();
    }
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
