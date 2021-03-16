import 'package:flutter/material.dart';
import 'package:geolocalisationApp/provider/ProviderElement.dart';
import 'package:provider/provider.dart';

class Item extends StatefulWidget {
   String id;
   String titre;
  Item({this.id, this.titre});
  @override
 
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<ElementProvider>(context);
    return    InkWell(
                         onTap: (){
                           setState(() {
                             provider.verification(widget.id);
                           });
                         },
                         child: Container(
                         height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: (provider.elements==widget.id? Colors.purple.shade900: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(widget.titre,
                              style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ),
                           ),
                       );
  }
}