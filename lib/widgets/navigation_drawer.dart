import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:savaneapp/Screens/ReglageScreen.dart';
import 'package:savaneapp/Screens/annoce_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Drawer(
      width: currentWidth,
      child: Material(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 32 * currentHeight / 922),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 34 * currentWidth / 428,
                      right: 26 * currentWidth / 428),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage("images/menu1.png")),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: 5 * currentHeight / 922,
                              top: 5 * currentHeight / 922),
                          child: Image(image: AssetImage("images/menu2.png"))),
                      Image(image: AssetImage("images/menu3.png")),
                    ],
                  ),
                ),
                Text(
                  "MENU",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 172 * currentWidth / 428),
                    height: 60 * currentHeight / 922,
                    child: Stack(
                      children: [
                        Image(image: AssetImage("images/pop1.png")),
                        Positioned(
                            top: 15,
                            left: 15,
                            child: Image(image: AssetImage("images/pop2.png"))),
                        Positioned(
                            top: 15,
                            left: 15,
                            child: Image(image: AssetImage("images/pop3.png"))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          buildMenuItem(
            onClicked: (() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return AnnonceScreen();
              })));
            }),
            text: "Annonces",
            icon: Container(
              height: 30,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage("images/annonce1.png"),
                  ),
                  Positioned(
                    top: 5,
                    left: 15,
                    child: Image(
                      image: const AssetImage("images/annonce2.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 22 * currentHeight / 922,
                bottom: 23 * currentHeight / 922),
            child: Image(image: AssetImage("images/Line.png")),
          ),
          buildMenuItem(
            text: "Notifications",
            icon: Container(
              height: 30,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage("images/notif1.png"),
                  ),
                  Positioned(
                    top: 20,
                    left: 6,
                    child: Image(
                      image: const AssetImage("images/notif2.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Image(image: AssetImage("images/Line.png")),
          buildMenuItem(
            text: "Avis utilisateurs",
            icon: Container(
                height: 30,
                child: Image(
                  image: AssetImage("images/Star.png"),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 22 * currentHeight / 922,
                bottom: 23 * currentHeight / 922),
            child: Image(image: AssetImage("images/Line.png")),
          ),
          buildMenuItem(
            text: "Notifications",
            icon: Container(
              height: 30,
              width: 30,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage("images/colis.png"),
                  ),
                  Positioned(
                    top: 7,
                    left: 0,
                    child: Image(
                      image: const AssetImage("images/colis1.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 12,
                    child: Image(
                      image: const AssetImage("images/colis2.png"),
                    ),
                  ),
                  Positioned(
                    top: 3.23,
                    left: 6,
                    child: Image(
                      image: const AssetImage("images/colis3.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 22 * currentHeight / 922,
                bottom: 23 * currentHeight / 922),
            child: Image(image: AssetImage("images/Line.png")),
          ),
          buildMenuItem(
            text: "Offres et remises",
            icon: Container(
              height: 30,
              width: 30,
              child: Stack(
                children: [
                  Positioned(
                    left: 2,
                    bottom: 0,
                    child: const Image(
                      image: AssetImage("images/gift.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    child: Image(
                      image: const AssetImage("images/gift1.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 12,
                    child: Image(
                      image: const AssetImage("images/gift2.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 6,
                    child: Image(
                      image: const AssetImage("images/gift4.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 12,
                    child: Image(
                      image: const AssetImage("images/gift3.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 22 * currentHeight / 922,
                bottom: 23 * currentHeight / 922),
            child: Image(image: AssetImage("images/Line.png")),
          ),
          buildMenuItem(
            onClicked: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ReglageScreen();
              }));
            },
            text: "Réglages",
            icon: Container(
              height: 30,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage("images/reglage1.png"),
                  ),
                  Positioned(
                    top: 6.55,
                    left: 6.55,
                    child: Image(
                      image: const AssetImage("images/reglage2.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required Container icon,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 22, color: Colors.black),
      ),
      onTap: onClicked,
    );
  }
}
