import 'package:flutter/material.dart';
import 'package:localisation/provider/ProviderElement.dart';
import 'package:localisation/screen/connexion.dart';
import 'package:localisation/screen/home.dart';
import 'package:localisation/widget/essai.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(child: MyApp()));
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
        builder: (DevicePreview.appBuilder;
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Connexion(),
      routes: {
        "home":(context)=>Home(),
      },
    ),
      );
   
  }
}

