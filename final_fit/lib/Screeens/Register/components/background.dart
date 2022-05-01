import 'package:final_fit/Components/GradientBackground.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;
  Background({Key? key,
  required this.child,
  }) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GradientBackground(
      
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/welcome.jpeg", fit: BoxFit.contain,)
          // ),
          widget.child,
        ],
      ),
      );
  }
}