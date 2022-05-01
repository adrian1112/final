import 'dart:ffi';

import 'package:final_fit/Components/RoundedCustomButton.dart';
import 'package:final_fit/Screeens/Login/loginScreen.dart';
import 'package:final_fit/Screeens/Register/registerScreen.dart';
import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: size.height * 0.5,),
        Text("Bienvenidos", 
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold, 
                fontSize: 16
                )
            ),
        SizedBox(height: size.height * 0.02,),
        RoundedCustomButton(text_: "INGRESAR",
                            width_: size.width * 0.6, 
                            height_: 45.0, 
                            onlcic_: (){ Navigator.push(context, 
                                                          MaterialPageRoute(
                                                            builder: (context){ 
                                                              return LoginScreen();
                                                            },
                                                          ),
                                                        );
                                          } ,
                            color_: ButtonColor,
                            ),
        SizedBox(height: size.height * 0.02,),
        RoundedCustomButton(text_: "REGISTRARSE", 
                            width_: size.width * 0.6, 
                            height_: 45.0 ,
                            onlcic_: (){ Navigator.push(context, 
                                                          MaterialPageRoute(
                                                            builder: (context){ 
                                                              return RegisterScreen();
                                                            },
                                                          ),
                                                        );
                                          } ,
                            color_: ButtonColor,
        ),
        
      ],)
    );
  }
}

