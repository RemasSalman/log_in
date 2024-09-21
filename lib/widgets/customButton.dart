import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonText,
    this.backgroundColor = Colors.transparent, 
    this.textColor = Colors.black, 
  });

  final String? buttonText;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
        color: backgroundColor, 
      ),
      child: Text(
        buttonText!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
          color: textColor, 
        ),
      ),
    );
  }
}