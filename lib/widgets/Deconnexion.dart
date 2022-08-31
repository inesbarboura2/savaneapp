import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/ConnexionScreen.dart';

class Deconnexion extends StatelessWidget {
  const Deconnexion({Key? key}) : super(key: key);

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
            image: AssetImage('images/deconbackground.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 81,
              left: 220 * currentWidth / 428,
              child: Image(
                image: AssetImage("images/déconnexion1.png"),
              ),
            ),
            Positioned(
              top: 106.5,
              left: 183 * currentWidth / 428,
              child: Image(
                image: AssetImage("images/déconnexion2.png"),
              ),
            ),
            Positioned(
              top: 94.33,
              left: 183 * currentWidth / 428,
              child: Image(
                image: AssetImage("images/déconnexion3.png"),
              ),
            ),
            Positioned(
                left: 105 * currentWidth / 428,
                top: (183 * currentHeight) / 922,
                child: Text(
                  "Déconnexion",
                  style: TextStyle(
                      fontSize: 40 * currentHeight / 922,
                      fontWeight: FontWeight.w500),
                )),
            Positioned(
                top: (240 * currentHeight) / 922,
                left: 101 * currentWidth / 428,
                child: Column(
                  children: [
                    Text(
                      "Voulez vous vraiment vous",
                      style: TextStyle(
                          fontSize: 20 * currentHeight / 922,
                          fontWeight: FontWeight.w300,
                          color: HexColor('#B1B1B1')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("déconnecter?",
                          style: TextStyle(
                              fontSize: 20 * currentHeight / 922,
                              fontWeight: FontWeight.w300,
                              color: HexColor('#B1B1B1'))),
                    )
                  ],
                )),
            Positioned(
              top: 313 * currentHeight / 922,
              left: 30 * currentWidth / 428,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ConnexionScreen();
                  }));
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
                      "Se déconnecter",
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
                top: 430 * currentHeight / 922,
                left: 30 * currentWidth / 428,
                child: Container(
                  height: 60 * currentHeight / 922,
                  width: 368 * currentWidth / 428,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: HexColor("#BC6153")),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: (() {}),
                    child: Text(
                      "Annuler",
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
