import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';

class ValuePropsSection extends StatelessWidget {
  const ValuePropsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: screenSize.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1.5),
            borderRadius: BorderRadius.circular(4.0),
          ),
          margin: EdgeInsets.only(
              top: screenSize.height * 0.1, bottom: screenSize.height * 0.06),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.015,
                vertical: screenSize.width >= 768
                    ? screenSize.height * 0.06
                    : screenSize.height * 0.04),
            child: Flex(
              direction:
                  screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width >= 768
                      ? screenSize.width * 0.2
                      : screenSize.width * 0.6,
                  color: Colors.transparent,
                  child: const Text(
                    'Germany based & GDPR Complaint',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                ReuseableIconTextContainer(
                  icon: Icons.verified_user,
                  text: 'Data does not leave our servers',
                  screenSize: screenSize,
                ),
                ReuseableIconTextContainer(
                  icon: Icons.business,
                  text: 'Own infrastructure',
                  screenSize: screenSize,
                ),
                ReuseableIconTextContainer(
                  icon: Icons.stacked_bar_chart,
                  text: 'Most renowed data centers',
                  screenSize: screenSize,
                ),
              ],
            ),
          ),
        ),
        Flex(
          direction: screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReuseableValuePropsContainer(
              screenSize: screenSize,
              titleText: 'Outward clothes promise at gravity.',
              onPressed: () {},
              descriptionText:
                  'End-to-end payments and financial management in a single solution. Meet the right platform to help others realize.',
            ),
            SizedBox(
              width: screenSize.width * 0.04,
              height: screenSize.height * 0.04,
            ),
            ReuseableValuePropsContainer(
              screenSize: screenSize,
              titleText: 'Sufficient particular impossible.',
              onPressed: () {},
              descriptionText:
                  'End-to-end payments and financial management in a single solution. Meet the right platform to help others realize.',
            ),
          ],
        ),
      ],
    );
  }
}

class ReuseableValuePropsContainer extends StatelessWidget {
  const ReuseableValuePropsContainer({
    Key? key,
    required this.screenSize,
    required this.titleText,
    required this.descriptionText,
    required this.onPressed,
  }) : super(key: key);

  final Size screenSize;
  final String titleText;
  final String descriptionText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shadowColor: Colors.grey.withOpacity(0.4),
      child: Container(
        width: screenSize.width >= 768
            ? screenSize.width * 0.4
            : screenSize.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(
            vertical: screenSize.height * 0.04,
            horizontal: screenSize.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.6,
              color: Colors.transparent,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: screenSize.height * 0.012),
              child: Text(
                titleText,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              width: screenSize.width * 0.7,
              color: Colors.transparent,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: screenSize.height * 0.02),
              child: Text(
                descriptionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            CustomElevatedButton(
              handleOnPressed: onPressed,
              labelText: 'Read More',
              backgroundColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableIconTextContainer extends StatelessWidget {
  const ReuseableIconTextContainer({
    Key? key,
    required this.icon,
    required this.text,
    required this.screenSize,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: screenSize.width >= 768 ? 0 : screenSize.height * 0.015),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            margin: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              icon,
              size: screenSize.width >= 768
                  ? screenSize.width * 0.03
                  : screenSize.width * 0.05,
              color: Colors.black,
            ),
          ),
          Container(
            width: screenSize.width >= 768
                ? screenSize.width * 0.12
                : screenSize.width * 0.6,
            color: Colors.transparent,
            child: Text(
              text,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
