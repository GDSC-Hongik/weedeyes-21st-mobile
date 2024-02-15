import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";

import "package:weedeyes/widgets/search.dart";
import "package:weedeyes/widgets/button_medium.dart";

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.55134963989258, 126.92439270019531);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
    ));
  }
}

class SearchMaps extends StatelessWidget {
  const SearchMaps({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Column(
              children: [
                const SizedBox(
                  height: 66,
                ),
                Search(),
              ],
            ),
            const Column(
              children: [
                ButtonMedium(text: "검색"),
                SizedBox(
                  height: 48,
                )
              ],
            )
          ])),
    );
  }
}
