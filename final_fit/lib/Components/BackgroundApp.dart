import 'package:final_fit/Components/GradientBackground.dart';
import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:  double.infinity,
      decoration: BoxDecoration(color: backgroundColor,),
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/welcome.jpeg", fit: BoxFit.contain,)
          // ),
          child,
        ],
      ),
    );
  }
}