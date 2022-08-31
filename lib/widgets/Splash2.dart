import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/ConnexionScreen.dart';
import 'package:savaneapp/widgets/customPageRoute.dart';
import '../Screens/splash3Screen.dart';

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: 'background',
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(children: [
              Positioned(
                  top: 0,
                  child: Image(
                    image: AssetImage("images/Pattern.png"),
                  )),
              Positioned(
                  right: 177.3189,
                  left: 216.4557,
                  top: 286.2916,
                  bottom: 484.7490,
                  child: Image(
                    image: AssetImage('images/1.png'),
                  )),
              Positioned(
                  right: 189.0916,
                  left: 210.3889,
                  top: 278.788,
                  bottom: 495.935,
                  child: Image(
                    image: AssetImage('images/2.png'),
                  )),
              Positioned(
                  right: currentWidth * 0.4361,
                  left: currentWidth * 0.52611,
                  top: currentHeight * 0.3366,
                  bottom: currentHeight * 0.6458,
                  child: Image(
                    image: AssetImage('images/3.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.33129,
                  bottom: currentHeight * 0.649211,
                  right: currentWidth * 0.4859,
                  left: currentWidth * 0.43739,
                  child: Image(
                    image: AssetImage('images/4.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.35441,
                  bottom: currentHeight * 0.630612,
                  right: currentWidth * 0.552,
                  left: currentWidth * 0.43297,
                  child: Image(
                    image: AssetImage('images/5.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.35546,
                  bottom: currentHeight * 0.61554,
                  right: currentWidth * 0.51949,
                  left: currentWidth * 0.43571,
                  child: Image(
                    image: AssetImage('images/6.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.38453,
                  bottom: currentHeight * 0.60292,
                  right: currentWidth * 0.55198,
                  left: currentWidth * 0.43309,
                  child: Image(
                    image: AssetImage('images/7.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.3825248,
                  bottom: currentHeight * 0.607192,
                  right: currentWidth * 0.510015,
                  left: currentWidth * 0.4610477,
                  child: Image(
                    image: AssetImage('images/8.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.39328,
                  bottom: currentHeight * 0.59380,
                  right: currentWidth * 0.518289,
                  left: currentWidth * 0.457704,
                  child: Image(
                    image: AssetImage('images/9.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.397505,
                  bottom: currentHeight * 0.58368,
                  right: currentWidth * 0.520369,
                  left: currentWidth * 0.451725,
                  child: Image(
                    image: AssetImage('images/10.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.39547,
                  bottom: currentHeight * 0.59717,
                  right: currentWidth * 0.482588,
                  left: currentWidth * 0.49219,
                  child: Image(
                    image: AssetImage('images/11.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.40373,
                  bottom: currentHeight * 0.57971,
                  right: currentWidth * 0.47844,
                  left: currentWidth * 0.48815,
                  child: Image(
                    image: AssetImage('images/12.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.408064,
                  bottom: currentHeight * 0.581775,
                  right: currentWidth * 0.4490755,
                  left: currentWidth * 0.5256702,
                  child: Image(
                    image: AssetImage('images/13.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.4211247,
                  bottom: currentHeight * 0.56677888,
                  right: currentWidth * 0.43277349,
                  left: currentWidth * 0.5361325,
                  child: Image(
                    image: AssetImage('images/14.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.4258837,
                  bottom: currentHeight * 0.56315225,
                  right: currentWidth * 0.4531432,
                  left: currentWidth * 0.512850,
                  child: Image(
                    image: AssetImage('images/15.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.43147666,
                  bottom: currentHeight * 0.5601530,
                  right: currentWidth * 0.46876733,
                  left: currentWidth * 0.5120493,
                  child: Image(
                    image: AssetImage('images/16.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.43979342,
                  bottom: currentHeight * 0.5560979,
                  right: currentWidth * 0.43143297,
                  left: currentWidth * 0.5577966,
                  child: Image(
                    image: AssetImage('images/17.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.44161438,
                  bottom: currentHeight * 0.54295332,
                  right: currentWidth * 0.43143297,
                  left: currentWidth * 0.520724191,
                  child: Image(
                    image: AssetImage('images/18.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.45931905,
                  bottom: currentHeight * 0.531606732,
                  right: currentWidth * 0.43143297,
                  left: currentWidth * 0.55824345,
                  child: Image(
                    image: AssetImage('images/19.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.45999234,
                  bottom: currentHeight * 0.52529456,
                  right: currentWidth * 0.44679506,
                  left: currentWidth * 0.49959938,
                  child: Image(
                    image: AssetImage('images/20.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.4801530221,
                  bottom: currentHeight * 0.5082019,
                  right: currentWidth * 0.444668721,
                  left: currentWidth * 0.53086286,
                  child: Image(
                    image: AssetImage('images/21.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.478622800,
                  bottom: currentHeight * 0.505738332,
                  right: currentWidth * 0.472543272,
                  left: currentWidth * 0.48268104,
                  child: Image(
                    image: AssetImage('images/22.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.470818668,
                  bottom: currentHeight * 0.5086228,
                  right: currentWidth * 0.51406779,
                  left: currentWidth * 0.44682588,
                  child: Image(
                    image: AssetImage('images/27.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.46188982,
                  bottom: currentHeight * 0.522846212,
                  right: currentWidth * 0.5488443,
                  left: currentWidth * 0.4329738,
                  child: Image(
                    image: AssetImage('images/24.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.44524781,
                  bottom: currentHeight * 0.53340474,
                  right: currentWidth * 0.51976887,
                  left: currentWidth * 0.43431432,
                  child: Image(
                    image: AssetImage('images/25.png'),
                  )),
              Positioned(
                  top: currentHeight * 0.439349655,
                  bottom: currentHeight * 0.5559143,
                  right: currentWidth * 0.52026194,
                  left: currentWidth * 0.471956856,
                  child: Image(
                    image: AssetImage('images/26.png'),
                  )),
              Positioned(
                top: 515 * currentHeight / 922,
                left: 116 * currentWidth / 428,
                child: Text(
                  "Bievenue dans",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 552 * currentHeight / 922,
                left: 118 * currentWidth / 428,
                child: Text(
                  "SAVANE",
                  style: TextStyle(
                      letterSpacing: 3,
                      color: Colors.white,
                      fontSize: 43,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                  top: 629 * currentHeight / 922,
                  left: 72 * currentWidth / 428,
                  child: SizedBox(
                      width: 283,
                      child: Text(
                        "Lorem ipsum dolor sit amet,consectetur adipiscing it. Vitae lacus, turpis feugiat elementum.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 19.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ))),
              Positioned(
                  top: 65 * currentHeight / 922,
                  left: 310 * currentWidth / 428,
                  child: TextButton(
                    child: Text(
                      "PASSER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return ConnexionScreen();
                      })));
                    }),
                  )),
              Positioned(
                  top: 852 * currentHeight / 922,
                  left: 43 * currentWidth / 428,
                  child: TextButton(
                    child: Text(
                      "PRECEDENT",
                      style: TextStyle(
                          color: HexColor("#AAAAAA"),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: (() {}),
                  )),
              Positioned(
                  top: 852 * currentHeight / 922,
                  left: 299 * currentWidth / 428,
                  child: TextButton(
                    child: Text(
                      "SUIVANT",
                      style: TextStyle(
                          color: HexColor("#FFFFFF"),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: (() {
                      Navigator.of(context).push(CustomPageRoute(
                          child: Splash3Screen(),
                          direction: AxisDirection.left));
                    }),
                  )),
              Positioned(
                  top: 769 * currentHeight / 922,
                  left: 195 * currentWidth / 428,
                  child: Image(
                    image: AssetImage("images/suivant1.png"),
                  )),
              Positioned(
                  top: 769 * currentHeight / 922,
                  left: 209 * currentWidth / 428,
                  child: Image(
                    image: AssetImage("images/suivant2.png"),
                  )),
              Positioned(
                  top: 769 * currentHeight / 922,
                  left: 223 * currentWidth / 428,
                  child: Image(
                    image: AssetImage("images/suivant2.png"),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
