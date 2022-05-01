import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';

class ActivityCell extends StatelessWidget {
  final double heigth_, width_;
  final int opcion;
  final String label_text;
  final String image_path;

  const ActivityCell({
    Key? key,
    required this.heigth_,
    required this.width_,
    required this.opcion,
    required this.label_text,
    required this.image_path,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("seleccionado: $opcion");
      },
      child: Container(
        width: width_,
        margin: EdgeInsets.only(right: 20),
        height: heigth_,
        decoration: BoxDecoration(
          color: GoldColor, 
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // boxShadow: [
          //   BoxShadow(
          //   color: GoldColor.withAlpha(80),
          //   offset: Offset(3.0, 5.0),
          //   blurRadius: 1.0,
          // ),
          // ]
        ),
        child:  Stack(
          alignment: Alignment.centerLeft,
          children: [
          Container(
              width: width_,
              height: heigth_,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20) ,
                child: Image.asset(image_path, fit: BoxFit.cover,)
                ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            Container(
              width: width_,
              height: heigth_,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text(
                label_text, 
                textAlign: TextAlign.left, 
                style: TextStyle(
                  fontWeight: FontWeight.w600, 
                  color: Colors.white,
                  )
                ),
            ),
        ],),
      ),
    );
  }
}