import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2,
      color: contentBackgroundColor,
    );
  }
}
