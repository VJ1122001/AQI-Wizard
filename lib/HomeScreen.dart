import 'dart:async';

import 'package:aqi_wizard/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Completer<GoogleMapController> _completer = Completer();
  static final CameraPosition _kGooglePlex= const CameraPosition(
      target: LatLng(20.5937, 78.9629),
      zoom: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: _kGooglePlex,
      )
    );
  }
}
