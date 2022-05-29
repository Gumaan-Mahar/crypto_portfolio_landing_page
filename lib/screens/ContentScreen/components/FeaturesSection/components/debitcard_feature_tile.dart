import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';

class DebitCardFeautreTile extends StatelessWidget {
  const DebitCardFeautreTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Flex(
      direction: screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
      children: [
        screenSize.width >= 768
            ? const SizedBox.shrink()
            : Padding(
                padding:
                    EdgeInsets.only(left: screenSize.width * 0.06, bottom: 2.0),
                child: Container(
                  color: Colors.amber,
                  child: SvgPicture.asset(
                    'assets/images/DebitCard.svg',
                    width: screenSize.width >= 768
                        ? screenSize.width * 0.6
                        : screenSize.width,
                    // height: screenSize.height * 0.5,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
        Container(
          width: screenSize.width >= 768
              ? screenSize.width * 0.5
              : screenSize.width * 0.8,
          height: screenSize.height * 0.3,
          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'OUR FEATURE',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
              ),
              const Text(
                'All payments can be managed from one account',
                style: TextStyle(
                    fontSize: 28.0,
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
        screenSize.width >= 768
            ? Padding(
                padding: EdgeInsets.only(left: screenSize.width * 0.1),
                child: SvgPicture.asset(
                  'assets/images/DebitCard.svg',
                  width: screenSize.width >= 768
                      ? screenSize.width * 0.6
                      : screenSize.width,
                  height: screenSize.height * 0.8,
                  fit: BoxFit.fill,
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
