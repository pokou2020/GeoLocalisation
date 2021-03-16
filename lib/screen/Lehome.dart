import 'package:flutter/material.dart';
import 'package:geolocalisationApp/screen/home.dart';
import 'package:geolocalisationApp/widget/drawer.dart';


class Lehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
       body: Home(),
    );
  }
}