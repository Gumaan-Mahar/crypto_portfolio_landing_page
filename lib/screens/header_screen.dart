import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/widgets/custom_elevated_button.dart';
import 'package:portfolio_landing_page/widgets/custom_text_button.dart';

class HeaderScreen extends StatelessWidget {
  final String titleText;
  const HeaderScreen({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: screenSize.width >= 768
              ? screenSize.height * 1.5
              : screenSize.height * 1,
          width: screenSize.width,
          color: Colors.transparent,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                children: [
                  Container(
                    height: screenSize.width >= 768
                        ? screenSize.height * 1
                        : screenSize.height * 0.8,
                    width: screenSize.width,
                    color: primaryColor,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: screenSize.width * 0.7,
                          child: SvgPicture.asset(
                            'assets/images/Vector_366.svg',
                            width: screenSize.width * 0.08,
                          ),
                        ),
                        Column(
                          children: [
                            constraints.maxWidth >= 768
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/images/Vector_362.svg',
                                            width: constraints.maxWidth * 0.08,
                                          ),
                                          Text(
                                            titleText,
                                            style: const TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      constraints.maxWidth >= 768
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  DropdownButtonHideUnderline(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 12.0),
                                                      child: DropdownButton<
                                                          String>(
                                                        iconSize: 14.0,
                                                        icon: const Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors.white,
                                                        ),
                                                        items: const [
                                                          DropdownMenuItem<
                                                              String>(
                                                            child: Text(
                                                              'Product',
                                                              style: TextStyle(
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                        onChanged:
                                                            (Object? value) {},
                                                      ),
                                                    ),
                                                  ),
                                                  DropdownButtonHideUnderline(
                                                    child:
                                                        DropdownButton<String>(
                                                      iconSize: 14.0,
                                                      icon: const Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        color: Colors.white,
                                                      ),
                                                      items: const [
                                                        DropdownMenuItem(
                                                          child: Text(
                                                            'Template',
                                                            style: TextStyle(
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                      onChanged:
                                                          (Object? value) {},
                                                    ),
                                                  ),
                                                  CustomTextButton(
                                                    handleOnPressed: () {},
                                                    labelText: 'Blog',
                                                  ),
                                                  CustomTextButton(
                                                    handleOnPressed: () {},
                                                    labelText: 'Pricing',
                                                  ),
                                                ],
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                      Row(
                                        children: [
                                          CustomTextButton(
                                            handleOnPressed: () {},
                                            labelText: 'Sign In',
                                          ),
                                          const SizedBox(
                                            width: 8.0,
                                          ),
                                          CustomElevatedButton(
                                            handleOnPressed: () {},
                                            labelText: 'Start Free',
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxWidth * 0.04,
                                  bottom: 8.0),
                              child: SizedBox(
                                width: screenSize.width >= 768
                                    ? screenSize.width * 0.6
                                    : screenSize.width * 0.8,
                                child: Text(
                                  'Managing your crypto portfolio has never been easier',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: screenSize.width >= 768
                                        ? constraints.maxWidth * 0.034
                                        : constraints.maxWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 16.0),
                              child: SizedBox(
                                width: screenSize.width >= 768
                                    ? screenSize.width * 0.4
                                    : screenSize.width * 0.68,
                                child: Text(
                                  'End-to-end payments and financial management in a single solution. Meet the right platform to help realize.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: screenSize.width >= 768
                                          ? 16.0
                                          : 14.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomElevatedButton(
                                    handleOnPressed: () {},
                                    labelText: 'Get Started',
                                    borderRadius: 18.0,
                                  ),
                                  SizedBox(
                                    width: constraints.maxWidth >= 768
                                        ? constraints.maxWidth * 0.05
                                        : constraints.maxWidth * 0.08,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.play_circle_filled,
                                      size: 45,
                                    ),
                                  ),
                                  CustomTextButton(
                                      handleOnPressed: () {},
                                      labelText: 'See How It Works'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.width >= 768
                        ? screenSize.height * 0.5
                        : screenSize.height * 0.2,
                    width: screenSize.width,
                    color: contentBackgroundColor,
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.3
              : screenSize.height * 0.1,
          left: screenSize.width >= 768
              ? screenSize.width * 0.22
              : screenSize.width * 0.76,
          child: SvgPicture.asset(
            'assets/images/Vector_363.svg',
            width: screenSize.width >= 768
                ? screenSize.width * 0.15
                : screenSize.width * 0.2,
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.24
              : screenSize.height * 0.4,
          left: screenSize.width >= 768
              ? screenSize.width * 0.12
              : screenSize.width * 0.16,
          child: SvgPicture.asset(
            'assets/images/Vector_364.svg',
            width: screenSize.width >= 768
                ? screenSize.width * 0.024
                : screenSize.width * 0.05,
          ),
        ),
        Positioned(
          top: screenSize.height * 0.2,
          left: 0,
          child: SvgPicture.asset(
            'assets/images/Vector_365.svg',
            width: screenSize.width >= 768
                ? screenSize.width * 0.03
                : screenSize.width * 0.05,
          ),
        ),
        Positioned(
          top: screenSize.height * 0.36,
          left: screenSize.width * 0.9,
          child: SvgPicture.asset(
            'assets/images/Vector_367.svg',
            width: screenSize.width * 0.065,
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.8
              : screenSize.height * 0.1,
          left: screenSize.width * 0.18,
          child: SvgPicture.asset(
            'assets/images/Vector_367.svg',
            width: screenSize.width * 0.065,
          ),
        ),
        Positioned(
          top: screenSize.height * 0.4,
          left: 0,
          child: SvgPicture.asset(
            'assets/images/Ellipse_01.svg',
            width: screenSize.width * 0.24,
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.8
              : screenSize.height * 0.6,
          right: 0,
          child: SvgPicture.asset(
            'assets/images/Vector_368.svg',
            width: screenSize.width * 0.065,
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.38
              : screenSize.height * 0.32,
          right: screenSize.width * 0.1,
          child: SvgPicture.asset(
            'assets/images/Ellipse_02.svg',
            width: screenSize.width * 0.34,
          ),
        ),
        Positioned(
          top: screenSize.width >= 768
              ? screenSize.height * 0.7
              : screenSize.height * 0.5,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width <= 420 ? 8 : 0),
            child: SvgPicture.asset(
              'assets/images/header_image.svg',
              width: screenSize.width,
              height: screenSize.width >= 768
                  ? screenSize.height * 0.8
                  : screenSize.height * 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
