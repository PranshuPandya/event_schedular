import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.text, this.colour, this.onPressed, this.textColor, required this.fontSize, required this.radius, required this.height, required this.width});
  final String? text;
  final Color? colour;
  final VoidCallback? onPressed;
  final Color? textColor;
  final double? fontSize ;
  final double? radius;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(radius!),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: height,
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor,
              fontSize: fontSize
            ),
            
          ),
        ),
      ),
    );
  }
}
