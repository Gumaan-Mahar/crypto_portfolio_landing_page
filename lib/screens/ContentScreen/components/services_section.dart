import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.width >= 768
          ? screenSize.height * 0.8
          : screenSize.height * 1.2,
      color: primaryColor,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenSize.width * 0.06,
            top: screenSize.width * 0.04,
            right: screenSize.width * 0.02,
            bottom: screenSize.width * 0.02),
        child: Column(
          children: [
            Flex(
              direction:
                  screenSize.width >= 480 ? Axis.horizontal : Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width >= 480
                      ? screenSize.width * 0.6
                      : screenSize.width * 0.9,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(
                      bottom: screenSize.width <= 480 ? 16.0 : 0.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Yet preference connection unpleasant yet melancholy but end appearence",
                    style: TextStyle(
                      fontSize: screenSize.width >= 768
                          ? screenSize.width * 0.02
                          : screenSize.width * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right:
                        screenSize.width >= 480 ? screenSize.width * 0.02 : 0.0,
                    bottom:
                        screenSize.width >= 480 ? screenSize.width * 0.02 : 0.0,
                  ),
                  child: CustomElevatedButton(
                      handleOnPressed: () {}, labelText: 'Get Started Now'),
                ),
              ],
            ),
            Expanded(
              child: Flex(
                direction:
                    screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReuseableSerialNoContainer(
                                screenSize: screenSize,
                                sNo: '1',
                              ),
                              ReuseableTextContainer(
                                screenSize: screenSize,
                                labelText: 'First Working Process',
                                descriptionText:
                                    'Blessing it ladyship on sensible judgement setting outweigh.',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReuseableSerialNoContainer(
                                screenSize: screenSize,
                                sNo: '2',
                              ),
                              ReuseableTextContainer(
                                screenSize: screenSize,
                                labelText: 'Dedicated Team',
                                descriptionText:
                                    'Warmly little before cousin sussex entire man set.',
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ReuseableSerialNoContainer(
                              screenSize: screenSize,
                              sNo: '3',
                            ),
                            ReuseableTextContainer(
                              screenSize: screenSize,
                              labelText: '24/7 Hours Support',
                              descriptionText:
                                  'And excellence partiality estimating terminated day everything.',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/Group_282.png',
                      width: screenSize.width >= 768
                          ? screenSize.width * 0.4
                          : screenSize.width,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableTextContainer extends StatelessWidget {
  const ReuseableTextContainer(
      {Key? key,
      required this.labelText,
      required this.descriptionText,
      required this.screenSize})
      : super(key: key);

  final String labelText;
  final String descriptionText;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          width: screenSize.width >= 768
              ? screenSize.width * 0.3
              : screenSize.width <= 480
                  ? screenSize.width * 0.6
                  : screenSize.width * 0.8,
          color: Colors.transparent,
          child: Text(
            descriptionText,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w100,
              color: Colors.white38,
            ),
          ),
        ),
      ],
    );
  }
}

class ReuseableSerialNoContainer extends StatelessWidget {
  const ReuseableSerialNoContainer({
    required this.sNo,
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final String sNo;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width >= 768
          ? screenSize.width * 0.04
          : screenSize.width <= 480
              ? screenSize.width * 0.08
              : screenSize.width * 0.06,
      height: screenSize.width >= 768
          ? screenSize.width * 0.04
          : screenSize.width <= 480
              ? screenSize.width * 0.08
              : screenSize.width * 0.06,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        right: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: const Color(0xFF312F91),
      ),
      child: Text(
        sNo,
        style: TextStyle(
          fontSize: screenSize.width >= 768
              ? screenSize.width * 0.018
              : screenSize.width * 0.028,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
