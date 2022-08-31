import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/annoce_screen.dart';
import 'package:savaneapp/models/product.dart';

class ConnexionMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Container(
        height: currentHeight * 0.6,
        width: currentWidth,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0),
          image: DecorationImage(
            image: AssetImage('images/ConnexionMode.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: (110 * currentHeight) / 922,
              left: (200 * currentWidth) / 428,
              child: Image(
                image: AssetImage("images/face1.png"),
              ),
            ),
            Positioned(
              top: (126.64 * currentHeight) / 922,
              left: (200 * currentWidth) / 428,
              child: Image(
                image: AssetImage("images/face2.png"),
              ),
            ),
            Positioned(
              top: (107.02 * currentHeight) / 922,
              left: (200 * currentWidth) / 428,
              child: Image(
                image: AssetImage("images/face3.png"),
              ),
            ),
            Positioned(
              top: (107.02 * currentHeight) / 922,
              left: ((221.63) * currentWidth) / 428,
              child: Image(
                image: AssetImage("images/face4.png"),
              ),
            ),
            Positioned(
              top: (126.64 * currentHeight) / 922,
              left: (221.63 * currentWidth) / 428,
              child: Image(
                image: AssetImage("images/face5.png"),
              ),
            ),
            Positioned(
                top: (91 * currentHeight) / 922,
                left: (175 * currentWidth) / 428,
                child: Image(image: AssetImage("images/Cercle.png"))),
            Positioned(
                left: 105 * currentWidth / 428,
                top: (183 * currentHeight) / 922,
                child: Column(
                  children: [
                    Text(
                      "Mode de",
                      style: TextStyle(
                          fontSize: 40 * currentHeight / 922,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Connexion",
                      style: TextStyle(
                          fontSize: 40 * currentHeight / 922,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Positioned(
                top: (300 * currentHeight) / 922,
                left: 40 * currentWidth / 428,
                child: Column(
                  children: [
                    Text(
                      "Tu veux utilisé le mode déverrouillage",
                      style: TextStyle(
                          fontSize: 20 * currentHeight / 922,
                          fontWeight: FontWeight.w300,
                          color: HexColor('#B1B1B1')),
                    ),
                    Text("reconnaissance faciale?",
                        style: TextStyle(
                            fontSize: 20 * currentHeight / 922,
                            fontWeight: FontWeight.w300,
                            color: HexColor('#B1B1B1')))
                  ],
                )),
            Positioned(
              top: 350 * currentHeight / 922,
              left: 30 * currentWidth / 428,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(200))),
                      builder: (BuildContext context) {
                        return ConnexionMode();
                      });
                },
                child: Container(
                  height: 75 * currentHeight / 922,
                  width: 368 * currentWidth / 428,
                  margin: EdgeInsets.only(
                      top: currentHeight * (23 / 922),
                      left: currentWidth * (0 / 428)),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/Rectangle3.png"))),
                  child: Center(
                    child: Text(
                      "Utiliser face ID",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 463 * currentHeight / 922,
                left: 30 * currentWidth / 428,
                child: Container(
                  height: 60 * currentHeight / 922,
                  width: 368 * currentWidth / 428,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: HexColor("#BC6153")),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AnnonceScreen();
                      }));
                    }),
                    child: Text(
                      "Passer à l'application",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ))
          ],
        ));
  }
}
