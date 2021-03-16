import 'package:flutter/material.dart';
import 'package:geolocalisationApp/provider/ProviderElement.dart';
import 'package:geolocalisationApp/screen/Lehome.dart';
import 'package:geolocalisationApp/screen/connexion.dart';
import 'package:geolocalisationApp/screen/home.dart';
import 'package:geolocalisationApp/widget/drawer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
       providers: [
        ChangeNotifierProvider.value(value: ElementProvider())
      ],
        child:  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Connexion(),
      routes: {
        "Lehome":(context)=>Lehome(),
      },
    ),
    );
  }
}

