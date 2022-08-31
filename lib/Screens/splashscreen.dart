import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:savaneapp/widgets/Splash2.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double currentOpacity = 0;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return (Scaffold(
      body: Hero(
        tag: 'background',
        child: InkWell(
          onTap: (() {
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    pageBuilder: (context, a, b) => Splash2()));
          }),
          child: Container(
            margin: EdgeInsets.only(bottom: 0, top: currentHeight * 0.90),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0),
              image: DecorationImage(
                image: AssetImage('images/Splash1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
