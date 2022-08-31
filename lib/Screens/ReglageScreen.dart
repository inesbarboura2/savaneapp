import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/profileScreen.dart';

import 'package:savaneapp/widgets/AjouterAnnonce.dart';
import 'package:savaneapp/widgets/navigation_drawer.dart';
import 'package:savaneapp/widgets/scrolableProducts.dart';

import 'package:provider/provider.dart';
import '../Providers/Products.dart';
import '../widgets/Deconnexion.dart';

class ReglageScreen extends StatefulWidget {
  const ReglageScreen({Key? key}) : super(key: key);

  @override
  State<ReglageScreen> createState() => _ReglageScreenState();
}

class _ReglageScreenState extends State<ReglageScreen> {
  bool NotifValue = false;
  bool chatValue = false;
  String NotifyText = "Off";
  String ChatBotText = "Off";
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          endDrawer: NavigationDrawerWidget(),
          body: Builder(
            builder: (context) => Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Scaffold.of(context).openEndDrawer();
                      }),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#F3F3F3")),
                        margin: EdgeInsets.only(
                            top: 32,
                            right: 160 * currentWidth / 428,
                            left: 30 * currentWidth / 428),
                        child: Stack(children: [
                          Positioned(
                              top: 21,
                              left: 17,
                              child: Image(
                                  image: AssetImage("images/annonceBut1.png"))),
                          Positioned(
                              top: 30,
                              left: 17,
                              child: Image(
                                  image: AssetImage("images/annonceBut2.png"))),
                          Positioned(
                              top: 39,
                              left: 17,
                              child: Image(
                                  image: AssetImage("images/annonceBut3.png")))
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        Scaffold.of(context).openEndDrawer();
                      }),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#F3F3F3")),
                        margin: EdgeInsets.only(
                            top: 32, right: 15 * currentWidth / 428),
                        child: Stack(children: [
                          Positioned(
                              top: 19 * currentHeight / 922,
                              left: 20 * currentWidth / 428,
                              child: Image(
                                  image: AssetImage("images/recherche1.png"))),
                          Positioned(
                              top: 35.43 * currentHeight / 922,
                              left: 38 * currentWidth / 428,
                              child: Image(
                                  image: AssetImage("images/recherche2.png"))),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        Scaffold.of(context).openEndDrawer();
                      }),
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return ProfileScreen();
                          })));
                        }),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor("#F3F3F3")),
                          margin: EdgeInsets.only(top: 32),
                          child: Stack(children: [
                            Positioned(
                                top: 16,
                                left: 16,
                                child: Image(
                                    image: AssetImage("images/house2.png"))),
                            Positioned(
                                top: 22,
                                left: 35,
                                child: Image(
                                    image: AssetImage("images/house1.png"))),
                            Positioned(
                                top: 28,
                                left: 35,
                                child: Image(
                                    image: AssetImage("images/house1.png"))),
                            Positioned(
                                top: 34,
                                left: 35,
                                child: Image(
                                    image: AssetImage("images/house1.png")))
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20 * currentHeight / 922,
                      right: 223 * currentWidth / 922),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modifier les",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 31),
                      ),
                      Text(
                        "Paramétres",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 31),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 60 * currentHeight / 922,
                          bottom: 57.4 * currentHeight / 922,
                          left: 30 * currentWidth / 428,
                          right: 20 * currentWidth / 428),
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                          color: HexColor("#E8F7FF"),
                          borderRadius: BorderRadius.circular(24)),
                      child: Stack(children: [
                        Positioned(
                            top: 18,
                            left: 20,
                            child:
                                Image(image: AssetImage("images/notif1.png"))),
                        Positioned(
                            top: 38,
                            left: 26,
                            child:
                                Image(image: AssetImage("images/notif2.png"))),
                      ]),
                    ),
                    Text(
                      "Notifications",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 52 * currentWidth / 428,
                          right: 7 * currentWidth / 428),
                      child: Text(
                        NotifyText,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: HexColor("#BBBBBB")),
                      ),
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Switch.adaptive(
                          value: NotifValue,
                          onChanged: (value) {
                            setState(() {
                              this.NotifValue = value;
                              if (NotifValue == false) {
                                setState(() {
                                  NotifyText = "Off";
                                });
                              } else {
                                setState(() {
                                  NotifyText = "On";
                                });
                              }
                            });
                          }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: 61,
                        width: 61,
                        margin: EdgeInsets.only(
                            left: 30 * currentWidth / 428,
                            right: 20 * currentWidth / 428),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: HexColor("#FFF6E8")),
                        child: Image(
                          image: AssetImage("images/ChatBotImage.png"),
                        )),
                    Text(
                      "Chatbot       ",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 52 * currentWidth / 428,
                          right: 7 * currentWidth / 428),
                      child: Text(
                        NotifyText,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: HexColor("#BBBBBB")),
                      ),
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Switch.adaptive(
                          value: chatValue,
                          onChanged: (value) {
                            setState(() {
                              this.chatValue = value;
                              if (chatValue == false) {
                                setState(() {
                                  ChatBotText = "Off";
                                });
                              } else {
                                setState(() {
                                  ChatBotText = "On";
                                });
                              }
                            });
                          }),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 250 * currentHeight / 922),
                  child: Image(image: AssetImage("images/Line.png")),
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(200))),
                              builder: (BuildContext context) {
                                return Deconnexion();
                              });
                        }),
                        child: Container(
                            child: Stack(
                          children: [
                            Positioned(
                                child: Image(
                              image: AssetImage("images/deconColor.png"),
                            )),
                            Positioned(
                              top: 44.5,
                              left: 55,
                              child:
                                  Image(image: AssetImage("images/decon1.png")),
                            ),
                            Positioned(
                                top: 50.25,
                                left: 41,
                                child: Image(
                                    image: AssetImage("images/decon3.png"))),
                            Positioned(
                                top: 55.5,
                                left: 41,
                                child: Image(
                                    image: AssetImage("images/decon2.png"))),
                          ],
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          "Déconnexion",
                          style: TextStyle(
                              color: HexColor("#BC6153"),
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
