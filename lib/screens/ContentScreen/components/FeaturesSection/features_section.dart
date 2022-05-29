import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/FeaturesSection/components/debitcard_feature_tile.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/components/FeaturesSection/components/portfolio_feature_tile.dart';

class FeaturesSection extends StatelessWidget {
  final String labelText;
  const FeaturesSection({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          PortfolioFeatureTile(labelText: labelText),
          const DebitCardFeautreTile(),
        ],
      ),
    );
  }
}
