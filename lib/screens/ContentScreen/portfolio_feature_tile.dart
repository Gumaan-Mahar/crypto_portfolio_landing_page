import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';

import '../../../../../widgets/custom_elevated_button.dart';

class PortfolioFeatureTile extends StatelessWidget {
  final String labelText;
  const PortfolioFeatureTile({Key? key, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.05),
      child: Flex(
        direction: screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width >= 768
                    ? screenSize.width * 0.06
                    : screenSize.width * 0.04,
                vertical: screenSize.height * 0.02),
            child: Image.asset(
              'assets/images/Illustration_01.png',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.5
                  : screenSize.width,
            ),
          ),
          Container(
            width: screenSize.width >= 768
                ? screenSize.width * 0.3
                : screenSize.width * 0.8,
            height: screenSize.height * 0.35,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'OUR FEATURE',
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w600),
                ),
                Text(
                  'All of your portfolios are linked to your $labelText account',
                  style: TextStyle(
                      fontSize: screenSize.width >= 768
                          ? screenSize.width * 0.018
                          : screenSize.width * 0.05,
                      fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
