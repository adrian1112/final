import 'package:final_fit/Screeens/Welcome/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:final_fit/constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter A",
      theme: ThemeData(primaryColor: PrimaryColor,
      scaffoldBackgroundColor: Colors.white
      ), 
      home: WelcomeScreen(),
    );
  }
}

