import 'package:flutter/material.dart';

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
          margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.1),
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
                  child: Text(
                    'Germany based & GDPR Complaint',
                    style: TextStyle(
                        fontSize: screenSize.width >= 768
                            ? screenSize.width * 0.015
                            : screenSize.width * 0.035,
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
      ],
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
                  : screenSize.width * 0.07,
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
              style: TextStyle(
                  fontSize: screenSize.width >= 768
                      ? screenSize.width * 0.013
                      : screenSize.width * 0.03,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
