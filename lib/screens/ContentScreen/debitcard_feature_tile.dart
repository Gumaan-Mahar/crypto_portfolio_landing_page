import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';

class DebitCardFeautreTile extends StatelessWidget {
  const DebitCardFeautreTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.height * 0.05),
      child: Flex(
        direction: screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
        children: [
          screenSize.width >= 768
              ? const SizedBox.shrink()
              : Image.asset(
                  'assets/images/Illustration_02.png',
                  width: screenSize.width,
                  fit: BoxFit.fill,
                ),
          Container(
            width: screenSize.width >= 768
                ? screenSize.width * 0.5
                : screenSize.width * 0.8,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width >= 768
                    ? screenSize.width * 0.08
                    : screenSize.width * 0.01),
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
                  'All payments can be managed from one account',
                  style: TextStyle(
                      fontSize: screenSize.width >= 768
                          ? screenSize.width * 0.018
                          : screenSize.width * 0.05,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
                  child: const Text(
                    'Why kept every ever home easy. Considered sympathize ten uncommonly occasional assistence sufficient not. Letter of on become he tended active enabled to.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                CustomElevatedButton(
                  handleOnPressed: () {},
                  labelText: 'Get Started',
                  backgroundColor: primaryColor,
                ),
              ],
            ),
          ),
          screenSize.width >= 768
              ? Image.asset(
                  'assets/images/Illustration_02.png',
                  width: screenSize.width * 0.5,
                  fit: BoxFit.fill,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
