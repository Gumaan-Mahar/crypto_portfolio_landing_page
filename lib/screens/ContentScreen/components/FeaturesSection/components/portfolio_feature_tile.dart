import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_landing_page/constants.dart';

import '../../../../../widgets/custom_elevated_button.dart';

class PortfolioFeatureTile extends StatelessWidget {
  final String labelText;
  const PortfolioFeatureTile({Key? key, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Flex(
      direction: screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
      children: [
        Image.asset(
          'assets/images/Illustration.png',
          width: screenSize.width >= 768
              ? screenSize.width * 0.6
              : screenSize.width,
          height: screenSize.height * 0.8,
          fit: BoxFit.fill,
        ),
        Container(
          width: screenSize.width >= 768
              ? screenSize.width * 0.4
              : screenSize.width * 0.8,
          height: screenSize.height * 0.35,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'OUR FEATURE',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                'All of your portfolios are linked to your $labelText account',
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Text(
                'Why kept every ever home easy. Considered sympathize ten uncommonly occasional assistence sufficient not. Letter of on become he tended active enabled to.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              CustomElevatedButton(
                handleOnPressed: () {},
                labelText: 'Get Started',
                backgroundColor: primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
