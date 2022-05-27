import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                )),
        home: const HomeScreen(
          titleText: 'GMS',
        ));
  }
}
