import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/constants.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/related_companies_section.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/services_section.dart';
import 'debitcard_feature_tile.dart';
import 'portfolio_feature_tile.dart';

class ContentScreen extends StatelessWidget {
  final String labelText;
  const ContentScreen({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 4,
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
            ],
          );
        },
      ),
    );
  }
}
