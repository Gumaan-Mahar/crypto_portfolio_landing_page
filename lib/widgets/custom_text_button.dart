import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback handleOnPressed;
  final String labelText;
  final double labelFontSize;
  const CustomTextButton({
    Key? key,
    required this.handleOnPressed,
    required this.labelText,
    this.labelFontSize = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handleOnPressed,
      child: Text(
        labelText,
        style: TextStyle(color: Colors.white, fontSize: labelFontSize),
      ),
    );
  }
}
