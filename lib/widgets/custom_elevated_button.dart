import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback handleOnPressed;
  final String labelText;
  final Color backgroundColor;
  final double borderRadius;
  const CustomElevatedButton({
    Key? key,
    required this.handleOnPressed,
    required this.labelText,
    this.backgroundColor = Colors.red,
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: handleOnPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return backgroundColor.withOpacity(0.9);
            }
            return backgroundColor;
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
              vertical: screenSize.width > 390 ? 20 : 14,
              horizontal: screenSize.width > 390 ? 20 : 12),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      child: Text(
        labelText,
        style: const TextStyle(fontSize: 14.0),
      ),
    );
  }
}
