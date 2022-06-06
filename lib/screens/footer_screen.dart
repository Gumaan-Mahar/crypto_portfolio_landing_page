import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';
import 'package:portfolio_landing_page/widgets/custom_text_button.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key, required this.titleText}) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      color: footerBackgroundColor,
      padding: EdgeInsets.symmetric(
        vertical: screenSize.height * 0.04,
      ),
      child: Column(
        children: [
          Container(
            width: screenSize.width >= 768
                ? screenSize.width * 0.6
                : screenSize.width * 0.8,
            color: Colors.transparent,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: screenSize.height * 0.04),
            child: Text(
              'Join millions of creative people with $titleText',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          CustomElevatedButton(
              handleOnPressed: () {}, labelText: 'Join The Waitlist -->'),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenSize.width >= 768
                    ? screenSize.height * 0.1
                    : screenSize.height * 0.05),
            child: Divider(
              height: 2.0,
              color: Colors.grey.shade600,
            ),
          ),
          Flex(
            direction:
                screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: screenSize.width >= 768
                        ? screenSize.width * 0.3
                        : screenSize.width * 0.8,
                    color: Colors.transparent,
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.02,
                      bottom: screenSize.width >= 768
                          ? 0.0
                          : screenSize.height * 0.05,
                    ),
                    child: Text(
                      'Yet bed for travelling assistance indulgence  unpleasing. Not thoughts all excercise blessing indulgence any every joy alteration boisterous the attachment.',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: screenSize.width * 0.1,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Company',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'About Us'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Careers'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Blog'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Pricing'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Product',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      CustomTextButton(
                          handleOnPressed: () {},
                          labelText: 'Invoicing Platform'),
                      CustomTextButton(
                          handleOnPressed: () {},
                          labelText: 'Accounting Platform'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Create Proposal'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Contacts'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Resources',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      CustomTextButton(
                          handleOnPressed: () {},
                          labelText: 'Proposal Template'),
                      CustomTextButton(
                          handleOnPressed: () {},
                          labelText: 'Invoice Template'),
                      CustomTextButton(
                          handleOnPressed: () {}, labelText: 'Tutorial'),
                      CustomTextButton(
                          handleOnPressed: () {},
                          labelText: 'How to write a contract'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenSize.width >= 768
                    ? screenSize.height * 0.1
                    : screenSize.height * 0.05),
            child: Divider(
              height: 4.0,
              color: Colors.grey.shade600,
            ),
          ),
          Text(
            '2022 $titleText. All rights reserved. -Privary Policy- Terms of Services',
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
