import 'package:flutter/material.dart';

class GradientBackgroundSfull extends StatefulWidget {
  final Widget child;
  GradientBackgroundSfull({Key? key,
  required this.child,
  }) : super(key: key);

  @override
  State<GradientBackgroundSfull> createState() => _GradientBackgroundSfullState();
}

class _GradientBackgroundSfullState extends State<GradientBackgroundSfull> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:  double.infinity,
      child: widget.child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(137, 26, 26, 26), 
            Colors.black],
            begin: const FractionalOffset(-1.0, 0.7),
            end: const FractionalOffset(1.0, 0.5),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
            )
            ),
    );
  }
}