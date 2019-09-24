import 'package:flutter/material.dart';
import 'package:zo_gradient_text/zo_gradient_text.dart';

void main() => runApp(ExampleZOAppBar());

class ExampleZOAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'zo_appbar example',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black54,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: new ExampleHome(),
      //routes: Routes.routes,
    );
  }
}

class ExampleHome extends StatefulWidget {
  @override
  _ExampleHomeState createState() => _ExampleHomeState();
}

class _ExampleHomeState extends State<ExampleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ZOGradientText(
            'zo_gradient_text',
            50.0,
            FontWeight.bold,
            FontStyle.normal,
            TextAlign.center,
            [
              const Color(0xFFFFF59D),
              const Color(0xFFFFF176),
              const Color(0xFFFBC02D),
              const Color(0xFFF9A825),
            ],
          ),
        ),
      ),
    );
  }
}