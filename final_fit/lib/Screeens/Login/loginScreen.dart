import 'package:final_fit/Screeens/Login/components/body.dart';
import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       body: Body(),
//       );
//   }
// }

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Body(),
      );
  }
}