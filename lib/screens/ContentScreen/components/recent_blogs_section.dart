import 'package:flutter/material.dart';

class RecentBlogSection extends StatelessWidget {
  const RecentBlogSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenSize.width * 0.05, top: screenSize.height * 0.04),
          child: Text(
            'Recent Blogs',
            style: TextStyle(
              fontSize: screenSize.width * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenSize.width * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width >= 768
                    ? screenSize.width * 0.6
                    : screenSize.width * 0.8,
                height: screenSize.height * 0.3,
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.02,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: screenSize.width * 0.6,
                        color: Colors.transparent,
                        padding: EdgeInsets.only(
                            left: screenSize.width * 0.012,
                            top: screenSize.height * 0.02,
                            bottom: screenSize.height * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: screenSize.height * 0.02),
                                  child: Text(
                                    'BEST PRACTICES',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenSize.width * 0.01,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Text(
                                  'In design active template  be uneasy. Thirty for remove plenty regard',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenSize.width * 0.015,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Read More',
                                  style: TextStyle(color: Colors.black26),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black26,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/blog_01.png',
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
              ),
              Flex(
                direction:
                    screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
                children: [
                  ReuseableBlogContainer(
                    screenSize: screenSize,
                    titleText:
                        'Partially on or continuing particular principles as.',
                    imagePath: 'assets/images/blog_02.png',
                  ),
                  ReuseableBlogContainer(
                    screenSize: screenSize,
                    titleText: 'Village did removed enjoyed explain',
                    imagePath: 'assets/images/blog_03.png',
                  ),
                  ReuseableBlogContainer(
                    screenSize: screenSize,
                    titleText:
                        'Wise busy path both park when an ye no. Nay likely her length.',
                    imagePath: 'assets/images/blog_04.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReuseableBlogContainer extends StatelessWidget {
  const ReuseableBlogContainer({
    Key? key,
    required this.screenSize,
    required this.titleText,
    required this.imagePath,
  }) : super(key: key);

  final Size screenSize;
  final String titleText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width >= 768
          ? screenSize.width * 0.28
          : screenSize.width * 0.8,
      height: screenSize.height * 0.6,
      color: Colors.white,
      padding: EdgeInsets.all(
        screenSize.width * 0.015,
      ),
      margin: EdgeInsets.only(
        right: screenSize.width >= 768 ? screenSize.width * 0.02 : 0.0,
      ),
      child: Flex(
        direction: screenSize.width >= 768 ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: screenSize.height * 0.02,
                ),
                child: Text(
                  'BEST PRACTICES',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenSize.width * 0.01,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                titleText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenSize.width * 0.015,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Image.asset(
            imagePath,
            width: screenSize.width * 0.28,
            height: screenSize.height * 0.4,
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
