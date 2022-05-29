import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/screens/ContentScreen/content_screen.dart';
import 'package:portfolio_landing_page/screens/footer_screen.dart';
import 'package:portfolio_landing_page/screens/header_screen.dart';

import '../constants.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_button.dart';

class HomeScreen extends StatelessWidget {
  final String titleText;
  const HomeScreen({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= 320
        ? LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Scaffold(
                appBar: constraints.maxWidth >= 768
                    ? null
                    : AppBar(
                        leadingWidth: constraints.maxWidth < 345 ? 45 : 60,
                        title: Text(
                          titleText,
                          style: TextStyle(
                              fontSize: constraints.maxWidth > 390
                                  ? 20
                                  : constraints.maxWidth < 345
                                      ? 12
                                      : 14),
                        ),
                        actions: [
                          CustomTextButton(
                            handleOnPressed: () {},
                            labelText: 'Sign In',
                            labelFontSize: 14,
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                                constraints.maxWidth < 390 ? 6.0 : 8.0),
                            child: CustomElevatedButton(
                              handleOnPressed: () {},
                              labelText: 'Start Free',
                            ),
                          ),
                        ],
                      ),
                drawer: constraints.maxWidth >= 580
                    ? const SizedBox.shrink()
                    : Drawer(
                        backgroundColor: Colors.yellow,
                        child: ListView(
                          children: [
                            const DrawerHeader(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: Text('Drawer Header'),
                            ),
                            ListTile(
                              title: const Text('Product'),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text('Template'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      HeaderScreen(
                        titleText: titleText,
                      ),
                      ContentScreen(
                        labelText: titleText,
                      ),
                      const FooterScreen(),
                    ],
                  ),
                ),
              );
            },
          )
        : Container(
            alignment: Alignment.center,
            width: screenSize.width,
            height: screenSize.height,
            color: contentBackgroundColor,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Screen size is too small. Could not load the content.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          );
  }
}
