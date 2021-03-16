import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocalisationApp/widget/item.dart';
import 'package:geolocator/geolocator.dart';
import "package:google_maps_flutter/google_maps_flutter.dart";



class Home extends StatefulWidget {
   Home({Key key, this.title});
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
 GoogleMapController newGoogleMapController;

 Position currentPosition;
 var geolocator=Geolocator();
 double bottomPaddingOfMap=0;

 void locationPosition()async{
   Position position = await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.high);
   LatLng latlatgPosition= LatLng(position.latitude, position.longitude);
   CameraPosition cameraPosition= CameraPosition(target: latlatgPosition , zoom: 14);
   newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
 }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {

  return Scaffold(
   body: Stack(
children: [
   GoogleMap(
     padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
     mapType: MapType.normal,
     myLocationButtonEnabled: true,
     initialCameraPosition:_kGooglePlex ,
     myLocationEnabled: true,
     zoomControlsEnabled: true,
     zoomGesturesEnabled: true,
     onMapCreated: (GoogleMapController controller){
      _controllerGoogleMap.complete(controller);
      newGoogleMapController=controller;

      setState(() {
        bottomPaddingOfMap=150;
      });

      locationPosition();
     },
     ),
  SafeArea(     
        child: Container(
           height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration( 
          // image: DecorationImage(
          //   image: AssetImage("images/map.png",), 
          // )
        ),
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.end,
        children: [
         
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 10,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: (){})
            ),
        ),
                ),
              ),
            ),
          ),
          Spacer(),
            Container(
                   height: MediaQuery.of(context).size.height/4,    
                   width: MediaQuery.of(context).size.width,  
                   
                  child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (cxt, i){
                    return InkWell(
                      onTap: (){
                       showBottomSheet(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                         elevation: 10,
                          //shape: ShapeBorder(context),
                         context: (cxt), builder: (cxt){
                         return  Container(
         height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration( borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0), 
          
        ),
        color: Colors.white
           ),
        child: Column(
          children: [
             
             Container(
               child: Text("Port-Bouet",
               style: TextStyle(
                 color: Colors.purple.shade800,
                 fontSize: 25,
                 fontWeight: FontWeight.bold
               ),
               ),
             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
               
                     Container(
                       child: Row(
                         children: [
                           Container(child: IconButton(icon: Icon(Icons.local_gas_station,  color: Colors.purple.shade800,), onPressed: (){})),
                               Container(
               child: Text("Ibis",
               style: TextStyle(
                     color: Colors.purple.shade800,
                     fontSize: 18,
               ),
               ),
             ),
                         ],
                       ),
                     ),
              
             SizedBox(width: 20,),
               Column(
                 children: [
                   Container(child:  Icon(Icons.local_car_wash,), ),
                   Container(child:Text("voiture",
               style: TextStyle(
                   color: Colors.black
                   
               ),
               ),),
                 ],
               ),
               SizedBox(width: 10,),
                  Column(
                 children: [
                   Container(child:  Icon(Icons.room,), ),
                   Container(child:Text("A pied",
               style: TextStyle(
                   color: Colors.black
                   
               ),
               ),),
                 ],
               ),
                  ],
                ),
             Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Item(id: "Restaurant", titre: "Restaurant",),
                  Item(id: "Review", titre: "Photo",),
                  Item(id: "Photo", titre: "Service Extra",)
              
                 ],
               ) ,
                Container(
                   height: MediaQuery.of(context).size.height/3.4,       
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (cxt, i){
                      return Card(
                        elevation: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3,
                          
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                   height: MediaQuery.of(context).size.height/5,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("images/hotel.jpg", ), fit: BoxFit.cover)
                                  )
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                     Container(
                                       child: Text(
                                         'Station Ivoire',
                                         style: TextStyle(
                                           color: Colors.purple.shade800,
                                           fontSize: 25
                                         ),
                                       ),
                                     ),
                                        Container(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceAround,

                                         children: [
                                           Container(child: Icon(Icons.star, color: Colors.orange,)),
                                            Container(child: Icon(Icons.star, color: Colors.orange,)),
                                             Container(child: Icon(Icons.star, color: Colors.orange,)),
                                              Container(child: Icon(Icons.star_half, color: Colors.orange,))
                                         ],
                                       )
                                     ),
                                         Container(
                                       child: Text( "Fait de s'arrêter au cours ",
                          style: TextStyle(
                           
                           color: Colors.black)
              
                ),
                                      
                                      )
                                      
                                     
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                  }
                  
                  ),
                )
          ],
        ),
               );

                       }) ;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                           elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height/5,
                       width: MediaQuery.of(context).size.width/3, 
                            child: Column(
                             
                              children: [
                                Center(
                                  child: Container(
                                    child: Icon(Icons.local_airport, size: 70,) ,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                  Container(
                                  child:Text("Airport",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                  )
                                  ) ,
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  
                  ),
                )
                
         // SizedBox(height:  20,),
           
        ],
        ),
    )
    ),
],
   ),
             floatingActionButton: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child:
                              Container(
                                height: 50,
                                width: 100,
                            
                              child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: (){
                         Scaffold.of(context).openDrawer();
                      }
                    ),
                          ),

                        ),
               
                 ],
               ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
    
  }
}


  