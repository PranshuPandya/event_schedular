import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, this.text, this.colour, this.onPressed, this.textColor, required this.fontSize, required this.radius, required this.height, required this.width}) : super(key: key);
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
    return Material(
        elevation: 2.0,
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
      );
  }
}
