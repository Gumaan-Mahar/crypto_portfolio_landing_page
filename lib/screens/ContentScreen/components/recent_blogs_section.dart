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
              left: screenSize.width >= 768 ? screenSize.width * 0.05 : 0.0,
              top: screenSize.height * 0.04),
          child: const Text(
            'Recent Blogs',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenSize.width >= 768
                  ? screenSize.width * 0.07
                  : screenSize.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width >= 768
                    ? screenSize.width * 0.8
                    : screenSize.width * 0.85,
                height: screenSize.width >= 768
                    ? screenSize.height * 0.3
                    : screenSize.height * 0.55,
                color: Colors.white,
                padding: EdgeInsets.only(
                  bottom:
                      screenSize.width >= 768 ? 0.0 : screenSize.width * 0.02,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.04,
                ),
                child: Flex(
                  direction:
                      screenSize.width >= 768 ? Axis.horizontal : Axis.vertical,
                  children: [
                    Container(
                      width: screenSize.width >= 768
                          ? screenSize.width * 0.5
                          : screenSize.width * 0.8,
                      color: Colors.transparent,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: screenSize.height * 0.02),
                                child: const Text(
                                  'BEST PRACTICES',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const Text(
                                'In design active template  be uneasy. Thirty for remove plenty regard',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          screenSize.width >= 768
                              ? Row(
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
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/blog_01.png',
                      width: screenSize.width >= 768
                          ? screenSize.width * 0.3
                          : screenSize.width * 0.85,
                      alignment: screenSize.width >= 768
                          ? Alignment.centerRight
                          : Alignment.center,
                      fit: screenSize.width >= 768
                          ? BoxFit.fitWidth
                          : BoxFit.fitHeight,
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
                        'Wise busy path both park when an ye no. Nay likely her length. This is so much fun.',
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
          : screenSize.width * 0.85,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.02,
        vertical: screenSize.height * 0.02,
      ),
      margin: EdgeInsets.only(
        right: screenSize.width >= 768 ? screenSize.width * 0.02 : 0.0,
        bottom: screenSize.width >= 768
            ? screenSize.width * 0.0
            : screenSize.width * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: screenSize.height * 0.02,
                ),
                child: const Text(
                  'BEST PRACTICES',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: screenSize.width >= 768
                    ? screenSize.width * 0.25
                    : screenSize.width * 0.8,
                color: Colors.transparent,
                padding: EdgeInsets.only(
                    bottom: screenSize.width >= 768
                        ? 0.0
                        : screenSize.width * 0.02),
                child: Text(
                  titleText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            imagePath,
            width: screenSize.width >= 768
                ? screenSize.width * 0.28
                : screenSize.width * 0.8,
            fit: screenSize.width >= 768 ? BoxFit.fitHeight : BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
