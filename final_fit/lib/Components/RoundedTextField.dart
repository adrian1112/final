import 'package:flutter/material.dart';

class RoundedTextField extends StatefulWidget {

final TextEditingController? controller;
final double width_, heigth_;
final String? hintText_;
final Icon? icon_;
final IconData? suffixIconObscureOn_;
final IconData? suffixIconObscureOff_;
final Color? suffixIconColor_;
final ValueChanged<String>? onChanged_;
final bool obscureText_;

  RoundedTextField({Key? key,
  this.controller,
  required this.width_,
  required this.heigth_,
  this.hintText_,
  this.icon_,
  this.suffixIconObscureOn_,
  this.suffixIconObscureOff_,
  this.onChanged_,
  this.obscureText_ = false,
  this.suffixIconColor_,
  }) : super(key: key);

  @override
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {

  var obscureText = false;

  @override
  Widget build(BuildContext context) {
    
    return CircularCustomContainer(
            width_: widget.width_,
            heigth_: widget.heigth_,
            child_: TextField( 
              controller: widget.controller,
              obscureText: obscureText,
              obscuringCharacter: "*",
              // keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.black45,
              onChanged: widget.onChanged_,
              decoration: InputDecoration(
                border: InputBorder.none,
                // enabledBorder: UnderlineInputBorder(      
                //   borderSide: BorderSide(color: Colors.white),   
                // ),  
                // focusedBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(color: Colors.black45),
                // ),
                // border: UnderlineInputBorder(
                //   borderSide: BorderSide(color: Colors.red),
                // ),
                hintText: widget.hintText_,
                icon: widget.icon_,
                suffixIcon: GestureDetector(
                  child: obscureText ? Icon(widget.suffixIconObscureOn_, color: widget.suffixIconColor_,) : Icon(widget.suffixIconObscureOff_, color: widget.suffixIconColor_,),
                  onTap: (){ setState(() {
                    print("ap");
                    obscureText = !obscureText;
                  });},),
                suffixIconConstraints: BoxConstraints(maxWidth: 20, maxHeight: widget.heigth_)
                
              ),
              ),
              );
  }
}


// class RoundedTextFieldSL extends StatelessWidget {

// final double width_, heigth_;
// final String? hintText_;
// final Icon? icon_;
// final IconData? suffixIcon_;
// final Color? suffixIconColor_;
// final ValueChanged<String>? onChanged_;
// final bool obscureText_;



//   const RoundedTextFieldSL({
//     Key? key,
//     required this.width_,
//     required this.heigth_,
//     this.hintText_,
//     this.icon_,
//     this.suffixIcon_,
//     this.onChanged_,
//     this.obscureText_ = false,
//     this.suffixIconColor_,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class CircularCustomContainer extends StatelessWidget {
  final double width_,heigth_;
  final Widget? child_;

  const CircularCustomContainer({
    Key? key,
    required this.width_,
    required this.heigth_,
    this.child_
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth_,
      width: width_,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(29)),
      child: child_,
    );
  }
}

