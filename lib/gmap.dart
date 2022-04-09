import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ui/get_location.dart';

class GMap extends StatefulWidget {
  final double latitude;
  final double longitude;

  LatLng? markerPosition;

  GMap({Key? key, required this.longitude, required this.latitude})
      : super(key: key);

  @override
  State<GMap> createState() => GMapState();
}

class GMapState extends State<GMap> {
  String metersDif = "";
  bool stop = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<MarkerId> listMarkerIds = List<MarkerId>.empty(growable: true);
  //final MarkerId markerId = MarkerId("current");

  // Set<Circle> circles = {
  //   const Circle(
  //     circleId: CircleId("69"),
  //     center: LatLng(66, 644),
  //     radius: 4000,
  //   )
  // };
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = Set();

  @override
  void initState() {
    super.initState();
    markers.add(const Marker(
      //add first marker
      markerId: MarkerId('1'),
      position: LatLng(11.06025, 76.99774), //position of marker
      infoWindow: InfoWindow(
        //popup info
        title: 'Natchiyar Mind Care',
        snippet: 'Psychiatric hospital',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    markers.add(const Marker(
      //add second marker
      markerId: MarkerId('2'),
      position: LatLng(11.02140, 76.96756), //position of marker
      infoWindow: InfoWindow(
        //popup info
        title: 'Mind Care Counselling',
        snippet: 'Counselor',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));
  }

  @override
  void dispose() {
    super.dispose();
    stop = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            markers: markers,
            mapType: MapType.hybrid,
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude, widget.longitude),
              zoom: 10,
            ),
          ),
        ],
      ),
    );
  }

  geofencingStream() async {
    int a = 0;
    await Future.delayed(Duration(seconds: 5));
    while (true) {
      if (stop) {
        break;
      }
      print(++a);
      await Future.delayed(const Duration(seconds: 3));
      var location = await FetchLocation().determinePosition();
      double distance = Geolocator.distanceBetween(location.latitude,
          location.longitude, widget.latitude, widget.longitude);

      setState(() {
        metersDif =
            distance.toString().replaceRange(3, distance.toString().length, "");
      });
    }
  }
}
