import 'package:flutter/material.dart';


class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
   bool isLoading = false;
   final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            
              child: Column(
                children: <Widget>[
                 SizedBox(height: deviceHeight/20, ),
                     Container(
                       height: deviceHeight/2, 
                       decoration: BoxDecoration(    
                        
                         image:DecorationImage(image: AssetImage("images/5.png"), fit: BoxFit.cover)
                       ),
                     ),
                     SizedBox(height: deviceHeight/300, ),
                 Container(
                     child: Text("A widget that controls where",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),
                     ),
                   ),
                    Container(
                     child: Text("A widget that controls",
                     style: TextStyle(
 
                     ),
                     ),
                   ),
                     Container(
                     child: Text("A widget that controls that controls where",
                     style: TextStyle(
 
                     ),
                     ),
                   ),
                      Container(
                     child: Text("A widget that controls that controls where",
                     style: TextStyle(
 
                     ),
                     ),
                   ),
                   SizedBox(height: 10,),
                  Column(
                    children: <Widget>[  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Container(
          height: 50,
          width: MediaQuery.of(context).size.width / 1.2,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.purple.shade50, 
              borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Email",
              contentPadding: EdgeInsets.only(left: 10),
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
              //  validator: (value) {
              //           if (value.isEmpty) {
              //             return 'Veuillez entrez votre mot de passe';
              //           } else if (!value.contains('@')) {
              //             return 'Svp entrez un mail valide';
              //           }
              //           return null;
              //         },
          ),
          ),
          
                        ],
                      ),
                      SizedBox(height: 5,),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                                   Container(
                                     height: 50,
                                     width: MediaQuery.of(context).size.width / 1.2,
                                     alignment: Alignment.center,
                                     decoration: BoxDecoration(
                                         color: Colors.purple.shade50,
                                         borderRadius: BorderRadius.circular(15)),
                                     child: TextFormField(
                                       
                                       controller: passwordController,
                                       decoration: InputDecoration(
                                      
                                 
                                         border: InputBorder.none,
                                         
                                         hintText: "Mot de pass",
                                         contentPadding: EdgeInsets.only(left: 10),
                                         hintStyle: TextStyle(
                                           
                                           color: Colors.grey,
                                         ),
                                         
                                filled: true,
                                  focusedBorder: InputBorder.none, 
                                   
                                       ),
                      //                      validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Entrez le mot de passe';
                      //   } else if (value.length < 6) {
                      //     return 'Votre mot de passe doit contenir au moins 6 caractere';
                      //   }
                      //   return null;
                      // },
                      
                                     ),
                                   ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Row(
                              children: <Widget>[
                              
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: FittedBox(
                                      child: Text(
                                        "Rester connecté",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: FittedBox(
                                      child: Text(
                                        "Mot de passe oublié",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 220),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                         height: 50,
                         width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                         color: Colors.purple.shade900
                        ),
                        child: isLoading
                            ? CircularProgressIndicator()
                            : InkWell(
                                onTap: () {
                                 Navigator.of(context).pushNamed("home");
                              
                                  }
                                ,
                                child: Center(child: Text('Se connecter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                )),
                              ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 220),
                        ],
                      ),
                    ],
                  ),
                  
                  
              
                  
              
                ],
              ),
            
          ),
        ),
      ),
    );
  }
}