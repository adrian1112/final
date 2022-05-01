import 'package:final_fit/Components/NavigationDrawer.dart';
import 'package:final_fit/Screeens/Principal/components/body.dart';
import 'package:flutter/material.dart';


class PrincipalScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
        ),
      body: Body(),
    );
  }
}