

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawers extends StatefulWidget {
  Drawers({Key key}) : super(key: key);
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipPath(
        child: Container(
          width: 240,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.5)),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("profil");
                      },
                      child: Center(
                        child:  CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/nove1.jpg'),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "Username",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
               
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                      endIndent: 80,
                      indent: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
              
                
                    // ListTile(
                    //   title: Text(
                    //     "Mes telechargement",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 12,
                    //     ),
                    //   ),
                    //   leading: IconButton(
                    //     icon: FaIcon(
                    //       FontAwesomeIcons.download,
                    //       color: Colors.red,
                    //       size: 20,
                    //     ),
                    //     onPressed: () {},
                    //   ),
                    // ),
                    // 
                       InkWell(
                         onTap: (){
                           Navigator.of(context).pushNamed("profil");
                         },
                         child: ListTile(
                      title: Text(
                          "Mon profil",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                      ),
                      leading: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.personBooth,
                            color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {},
                      ),
                    ),
                       ),
                        InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed("Notification");
                      },
                      child: ListTile(
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Notification",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: CircleAvatar(
                                  minRadius: 4,
                                  backgroundColor: Colors.green,
                                  child: Text("3",
                                  style: TextStyle(
                                   color: Colors.black,
                                    fontSize: 7
                                  ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        leading: IconButton(
                          icon: Icon(Icons.notifications_active,
                           color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed("Abonement1");
                      },
                      child: ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Text(
                                "Abonnement",
                                style: TextStyle(
                                 color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        leading: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.moneyBill,
                            color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                 
                       SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "favoris");
                      },
                      child: ListTile(
                        title: Text(
                          "Mes Favoris",
                          style: TextStyle(
                             color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        leading: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.star,
                            color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  
                    // ListTile(
                    //   title: Text(
                    //     "Partager un amis",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 12,
                    //     ),
                    //   ),
                    //   leading: IconButton(
                    //       icon: Icon(
                    //         Icons.person_add,
                    //         size: 20,
                    //         color: Colors.red,
                    //       ),
                    //       onPressed: () {}),
                    // ),
                    
                    ListTile(
                      onTap: ()=>Navigator.of(context).pushNamed("connex"),
                      title: Text(
                        "Deconexion",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      leading: IconButton(
                          icon: Icon(
                            Icons.power_settings_new,
                            size: 20,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                  //   ListTile(
                  //     title: Text(
                  //       "A propos",
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 12,
                  //       ),
                  //     ),
                  //     leading: IconButton(
                  //         icon: Icon(
                  //           Icons.inbox,
                  //           size: 20,
                  //           color: Colors.red,
                  //         ),
                  //         onPressed: () {}),
                  //   ),
                  // 
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
