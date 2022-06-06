import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/recent_blogs_section.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/related_companies_section.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/services_section.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/value_props_section.dart';
import 'debitcard_feature_tile.dart';
import 'portfolio_feature_tile.dart';

class ContentScreen extends StatelessWidget {
  final String labelText;
  const ContentScreen({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      padding: EdgeInsets.only(
        bottom: screenSize.height * 0.05,
      ),
      color: contentBackgroundColor,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              RelatedCompaniesSection(
                labelText: labelText,
              ),
              PortfolioFeatureTile(labelText: labelText),
              const DebitCardFeautreTile(),
              const ServicesSection(),
              const ValuePropsSection(),
              const RecentBlogSection(),
            ],
          );
        },
      ),
    );
  }
}
