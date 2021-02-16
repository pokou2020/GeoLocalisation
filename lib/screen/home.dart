import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:localisation/ui/base_widget.dart';
import 'package:localisation/widget/Drawer.dart';
import 'package:localisation/widget/item.dart';



class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
builder: (context, sizingInformation) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: null),
       title: Container(
         child:  TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: (){})
              ),
          ),
       ),
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [

          ],
        ),
      ),
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Container(
             height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration( 
          
            image: DecorationImage(
              image: AssetImage("images/map.png",), fit: BoxFit.cover
            )
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
                    width: MediaQuery.of(context).size.width/1.5,
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
                     height: MediaQuery.of(context).size.height/5,    
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
                 child: Text("Station sheel",
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
                     Container(child:Text("Ibis",
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
                    Item(id: "Review", titre: "Review",),
                    Item(id: "Photo", titre: "Photo",)
                
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
                                image: DecorationImage(image: AssetImage("images/station.jpg", ), fit: BoxFit.cover)
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
    ),
        )
    )
    );
},
    );
    
  }
}



