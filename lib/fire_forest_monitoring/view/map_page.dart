import 'dart:async';

import 'package:fire_forest_monitoring_system/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  // static const List<LatLng> hotSpot = [
  //   LatLng(18.870455, 98.431994),
  //   LatLng(19.119963, 100.074268),
  //   LatLng(19.318516, 99.462226),
  //   LatLng(19.904466, 99.926612),
  //   LatLng(18.184365, 100.163855)
  // ];

  final Set<Marker> hotspots = {};

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      restorationId: 'googleMap',
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(image: AssetImage('lib/img/GistdaIcon.png')),
        actions: <Widget>[
          IconButton(
            onPressed: () => print('TAPPED!'),
            icon: const Image(image: AssetImage('lib/img/circle.png')),
          )
        ],
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: getHotspots(),
      ),
      bottomNavigationBar: const BottomNav(),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  Set<Marker> getHotspots() {
    setState(() {
      hotspots.add(const Marker(
        markerId: MarkerId('hotspot1'),
        position: LatLng(18.870455, 98.431994),
        infoWindow: InfoWindow(title: 'First Hotspot', snippet: 'snippet'),
        
      ));
    });
    return hotspots;
  }
}
