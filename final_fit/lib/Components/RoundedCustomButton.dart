import 'package:flutter/material.dart';
import 'package:final_fit/constants.dart';

class RoundedCustomButton extends StatelessWidget {
  final String text_;
  final double width_, height_, fontSize_;
  final VoidCallback? onlcic_;
  final Color color_, textColor_;
  

  const RoundedCustomButton({
    Key? key,
    this.text_ = "",
    required this.width_ ,
    required this.height_ ,
    this.color_ = PrimaryColor,
    this.textColor_ = Colors.white,
    this.onlcic_,
    this.fontSize_ = 14
  }) : super(key: key);

  
  

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width_,
        height: height_,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(height_ / 2),
            child: TextButton(
              onPressed: onlcic_,
              style: TextButton.styleFrom(backgroundColor: color_),
              child: Text(text_, 
                  style: TextStyle(
                        color: textColor_,
                        fontSize: fontSize_,
                        fontWeight: FontWeight.bold,
                      )
                  ),
              ),
            ),
          );
  }
}

