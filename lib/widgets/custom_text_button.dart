import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
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
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  late bool showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.handleOnPressed,
      onHover: (hovered) {
        setState(
          () {
            showUnderline = hovered;
          },
        );
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        alignment: Alignment.centerLeft,
      ),
      child: Text(
        widget.labelText,
        style: TextStyle(
            color: Colors.white,
            fontSize: widget.labelFontSize,
            decoration:
                showUnderline ? TextDecoration.underline : TextDecoration.none),
      ),
    );
  }
}
