import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';

// ignore: camel_case_types
class splashscreenuno extends StatefulWidget {
  const splashscreenuno({Key? key}) : super(key: key);

  @override
  _splashscreenunoState createState() => _splashscreenunoState();
}

class _splashscreenunoState extends State<splashscreenuno> {
  @override
  Widget build(BuildContext context) {
    return new Stack(children: [
      SplashScreen(
        seconds: 10,
        gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue]),
        navigateAfterSeconds: MyRoutes2,
        loaderColor: Colors.transparent,
      ),
      Center(
        child: Text("Carregando"),
      ),
    ]);
  }
}
