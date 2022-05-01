import 'package:final_fit/Components/RoundedCustomButton.dart';
import 'package:final_fit/Screeens/Login/loginScreen.dart';
import 'package:final_fit/Screeens/Register/components/background.dart';
import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';
import 'package:final_fit/Components/RoundedTextField.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Registrarse", 
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold, 
                  fontSize: 16
                  )
              ),
          SizedBox(height: size.height * 0.02,),
          
          RoundedTextField( width_: size.width * 0.8, 
                            heigth_: 45, 
                            hintText_: "Correo",
                            icon_: Icon(Icons.person, color: Colors.black,),
                            onChanged_: (value){ print(value);},
          ),
          RoundedTextField(controller: widget.passwordController,
                            width_: size.width * 0.8, 
                            heigth_: 45, 
                            obscureText_: true,
                            hintText_: "Contraseña",
                            icon_: Icon(Icons.lock, color: Colors.black,),
                            suffixIconObscureOn_: Icons.visibility,
                            suffixIconObscureOff_: Icons.visibility_off,
                            suffixIconColor_: Colors.black,
                            onChanged_: (value){ print(value);},
          ),
          RoundedTextField(controller: widget.passwordController,
                            width_: size.width * 0.8, 
                            heigth_: 45, 
                            obscureText_: true,
                            hintText_: "Repita Contraseña",
                            icon_: Icon(Icons.lock, color: Colors.black,),
                            suffixIconObscureOn_: Icons.visibility,
                            suffixIconObscureOff_: Icons.visibility_off,
                            suffixIconColor_: Colors.black,
                            onChanged_: (value){ print(value);},
          ),
          RoundedCustomButton(text_: "REGISTRARME",
                              width_: size.width * 0.8, 
                              height_: 45.0, 
                              onlcic_: (){  print("ingresando a app");
                                            } ,
                              color_: ButtonColor,
                              ),
          SizedBox(height: 30),
          GestureDetector(
            // ignore: avoid_print
            onTap: () { 
                                      Navigator.pushReplacement(context, MaterialPageRoute(
                                                              builder: (context){ 
                                                                return LoginScreen();
                                                              },
                                                            ),
                                                          );
             },
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("¿Ya tienes una cuenta? ", 
                    style: TextStyle(color: Colors.white, 
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                    ),
                Text("Ingresa",
                style: TextStyle(color: Colors.white, 
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ))
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
        ],
        ),
      )
    );
  }
}

// class Body extends StatefulWidget {
//   Body({Key? key}) : super(key: key);

//   TextEditingController passwordController = TextEditingController();

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//         Text("Ingresar", 
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold, 
//                 fontSize: 16
//                 )
//             ),
//         SizedBox(height: size.height * 0.02,),
        
//         RoundedTextField( width_: size.width * 0.8, 
//                           heigth_: 45, 
//                           hintText_: "Correo",
//                           icon_: Icon(Icons.person, color: Colors.black,),
//                           onChanged_: (value){ print(value);},
//         ),
//         RoundedTextField(controller: widget.passwordController,
//                           width_: size.width * 0.8, 
//                           heigth_: 45, 
//                           obscureText_: true,
//                           hintText_: "Contraseña",
//                           icon_: Icon(Icons.lock, color: Colors.black,),
//                           suffixIconObscureOn_: Icons.visibility,
//                           suffixIconObscureOff_: Icons.visibility_off,
//                           suffixIconColor_: Colors.black,
//                           onChanged_: (value){ print(value);},
//         ),
//         RoundedCustomButton(text_: "INGRESAR",
//                             width_: size.width * 0.8, 
//                             height_: 45.0, 
//                             onlcic_: (){ Navigator.push(context, 
//                                                           MaterialPageRoute(
//                                                             builder: (context){ 
//                                                               return LoginScreen();
//                                                             },
//                                                           ),
//                                                         );
//                                           } ,
//                             color_: ButtonColor,
//                             ),
//         SizedBox(height: 30),
//         GestureDetector(
//           // ignore: avoid_print
//           onTapUp: (tap_details) { print("registrando"); },
//           child: Row( 
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("¿No tienes una cuenta? ", 
//                   style: TextStyle(color: Colors.white, 
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 12,
//                                   ),
//                   ),
//               Text("Regístrate",
//               style: TextStyle(color: Colors.white, 
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12,
//                                   ))
//             ],
//           ),
//         ),
        
//       ],)
//     );
//   }
// }

// class Body extends StatelessWidget {
  
  

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//         Text("Ingresar", 
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold, 
//                 fontSize: 16
//                 )
//             ),
//         SizedBox(height: size.height * 0.02,),
        
//         RoundedTextField( width_: size.width * 0.8, 
//                           heigth_: 45, 
//                           hintText_: "Correo",
//                           icon_: Icon(Icons.person, color: Colors.black,),
//                           onChanged_: (value){ print(value);},
//         ),
//         RoundedTextField(controller: passwordController,
//                           width_: size.width * 0.8, 
//                           heigth_: 45, 
//                           hintText_: "Contraseña",
//                           icon_: Icon(Icons.lock, color: Colors.black,),
//                           suffixIconObscureOn_: Icons.visibility,
//                           suffixIconObscureOff_: Icons.visibility_off,
//                           suffixIconColor_: Colors.black,
//                           onChanged_: (value){ print(value);},
//         ),
//         RoundedCustomButton(text_: "INGRESAR",
//                             width_: size.width * 0.8, 
//                             height_: 45.0, 
//                             onlcic_: (){ Navigator.push(context, 
//                                                           MaterialPageRoute(
//                                                             builder: (context){ 
//                                                               return LoginScreen();
//                                                             },
//                                                           ),
//                                                         );
//                                           } ,
//                             color_: ButtonColor,
//                             ),
//         SizedBox(height: 30),
//         GestureDetector(
//           // ignore: avoid_print
//           onTapUp: (tap_details) { print("registrando"); },
//           child: Row( 
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("¿No tienes una cuenta? ", 
//                   style: TextStyle(color: Colors.white, 
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 12,
//                                   ),
//                   ),
//               Text("Regístrate",
//               style: TextStyle(color: Colors.white, 
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12,
//                                   ))
//             ],
//           ),
//         ),
        
//       ],)
//     );
//   }
// }

