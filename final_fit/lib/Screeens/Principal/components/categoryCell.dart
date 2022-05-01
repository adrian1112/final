import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  final double category_heigth;
  final int opcion;
  final String label_text;
  final String image_path;

  const CategoryCell({
    Key? key,
    required this.category_heigth,
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
        width: 120,
        margin: EdgeInsets.only(right: 20),
        height: category_heigth,
        decoration: BoxDecoration(
          color: GoldColor, 
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
            color: GoldColor.withAlpha(80),
            offset: Offset(3.0, 5.0),
            blurRadius: 1.0,
          ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: category_heigth*0.35,
              child: Image.asset(image_path,color: Colors.black54,)
              ),
            Text(
              label_text, 
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.w700, 
                color: Colors.black87)
              ),
          ],
        ),
      ),
    );
  }
}