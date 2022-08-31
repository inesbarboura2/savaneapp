import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../widgets/navigation_drawer.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/card.dart';
import '../models/product.dart';
import '../widgets/conditionRadioButton.dart';
import '../widgets/ConfirmationProduct.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../Providers/Products.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Filed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isHidden = true;

    final passwordController = TextEditingController();

    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
        child: Scaffold(
            endDrawer: NavigationDrawerWidget(),
            body: Column(
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
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#F3F3F3")),
                        margin: EdgeInsets.only(top: 32),
                        child: Stack(children: [
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Image(
                                  image:
                                      AssetImage("images/profilePage2.png"))),
                          Positioned(
                              top: 22,
                              left: 35,
                              child: Image(
                                  image:
                                      AssetImage("images/profilePage1.png"))),
                          Positioned(
                              top: 28,
                              left: 35,
                              child: Image(
                                  image:
                                      AssetImage("images/profilePage1.png"))),
                          Positioned(
                              top: 34,
                              left: 35,
                              child: Image(
                                  image: AssetImage("images/profilePage1.png")))
                        ]),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 66 * currentHeight / 922,
                      left: 31 * currentWidth / 428),
                  child: RichText(
                    text: TextSpan(
                      text: 'Modifier',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 34 * (currentHeight / 922),
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Profil',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 34 * (currentHeight / 922),
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 32 * currentHeight / 922,
                      left: 31 * currentWidth / 428),
                  child: Row(
                    children: [
                      Container(
                        width: 116,
                        height: 116,
                        decoration: BoxDecoration(
                          color: HexColor("#F9F9F9"),
                        ),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                side: BorderSide(
                                    width: 1.0, color: HexColor("#DDDDDD"))),
                            onPressed: (() {
                              pickImage();
                            }),
                            child: Image(
                                image: AssetImage("images/ajoutProf.png"))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 21 * currentWidth / 428),
                        child: Column(
                          children: [
                            Text(
                              "Entreprise",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34 * (currentHeight / 922),
                                  color: Colors.black),
                            ),
                            Text(
                              "LAURENT",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 34 * (currentHeight / 922),
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 48 * currentHeight / 922,
                      left: 21 * currentWidth / 428),
                  child: Text(
                    "Nom de l'organisation",
                    style: TextStyle(
                        color: HexColor("#888888"),
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 17 * currentHeight / 922,
                      left: 31 * currentWidth / 428),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 5,
                        child: Stack(children: [
                          Positioned(
                            bottom: 14,
                            left: 4,
                            child: Image(image: AssetImage("images/Nom1.png")),
                          ),
                          Positioned(
                            bottom: 5,
                            child: Image(image: AssetImage("images/Nom2.png")),
                          )
                        ]),
                      ),
                      hintText: "Nom de l’organisme",
                      constraints: BoxConstraints(
                          maxWidth: currentWidth * 0.859, maxHeight: 24),
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        fontSize: 17 * (currentHeight / 922),
                        color: HexColor('#C0C0C0'),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 48 * currentHeight / 922,
                      left: 21 * currentWidth / 428),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: HexColor("#888888"),
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 17 * currentHeight / 922,
                      left: 31 * currentWidth / 428),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 10,
                        child: Stack(children: [
                          Positioned(
                              bottom: 5,
                              child: Image(
                                  image: AssetImage("images/email1.png"))),
                          Positioned(
                              bottom: 11,
                              child: Image(
                                  image: AssetImage("images/email2.png"))),
                        ]),
                      ),
                      hintText: 'E-mail',
                      constraints: BoxConstraints(
                          maxWidth: currentWidth * 0.859, maxHeight: 21),
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        fontSize: 17 * (currentHeight / 922),
                        color: HexColor('#C0C0C0'),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 48 * currentHeight / 922,
                      left: 21 * currentWidth / 428),
                  child: Text(
                    "Mot de passe",
                    style: TextStyle(
                        color: HexColor("#888888"),
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 17 * currentHeight / 922,
                      left: 31 * currentWidth / 428),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: isHidden,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                          width: 10,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 5,
                                child:
                                    Image(image: AssetImage("images/mdp1.png")),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 3,
                                child:
                                    Image(image: AssetImage("images/mdp2.png")),
                              )
                            ],
                          )),
                      hintText: 'Mot de passe',
                      constraints: BoxConstraints(
                          maxWidth: currentWidth * 0.859, maxHeight: 24.5),
                      border: UnderlineInputBorder(),
                      suffixIcon: Container(
                        height: 10,
                        width: 10,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: -12,
                              child: IconButton(
                                icon: isHidden
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isHidden = !isHidden;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        fontSize: 17 * (currentHeight / 922),
                        color: HexColor('#C0C0C0'),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  height: currentHeight * 0.16,
                  width: currentWidth,
                  margin: EdgeInsets.only(
                    top: 34,
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/ButtonContainer.png"))),
                  child: Center(
                    child: Container(
                      width: currentWidth * 0.852,
                      height: currentHeight * 0.073,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 0,
                            onPrimary: Colors.black,
                            primary: Colors.white),
                        child: Text("Enregistrer"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 0),
                ),
              ],
            )));
  }
}
