import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RelatedCompaniesSection extends StatelessWidget {
  final String labelText;
  const RelatedCompaniesSection({Key? key, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Over 32k+ software businesses growing with $labelText.',
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Wrap(
          spacing: screenSize.width * 0.04,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          runSpacing: screenSize.width * 0.02,
          children: [
            SvgPicture.asset(
              'assets/images/OpenZeppelin.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Oracle.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Morpheus.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Samsung.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Monday.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Segment.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
            SvgPicture.asset(
              'assets/images/Protonet.svg',
              width: screenSize.width >= 768
                  ? screenSize.width * 0.1
                  : screenSize.width * 0.18,
            ),
          ],
        ),
      ],
    );
  }
}
