import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/profileScreen.dart';

import 'package:savaneapp/widgets/AjouterAnnonce.dart';
import 'package:savaneapp/widgets/navigation_drawer.dart';
import 'package:savaneapp/widgets/scrolableProducts.dart';

import 'package:provider/provider.dart';
import '../Providers/Products.dart';

class AnnonceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final productData = Provider.of<Products>(context);
    final newProduct = productData.item;
    return SafeArea(
        child: (Scaffold(
      endDrawer: NavigationDrawerWidget(),
      backgroundColor: Colors.white,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return ProfileScreen();
                    })));
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
                          child: Image(image: AssetImage("images/house2.png"))),
                      Positioned(
                          top: 22,
                          left: 35,
                          child: Image(image: AssetImage("images/house1.png"))),
                      Positioned(
                          top: 28,
                          left: 35,
                          child: Image(image: AssetImage("images/house1.png"))),
                      Positioned(
                          top: 34,
                          left: 35,
                          child: Image(image: AssetImage("images/house1.png")))
                    ]),
                  ),
                ),
              ],
            ),
            ScrolableProducts(Products: newProduct),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 30, right: 32),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(200))),
                builder: (BuildContext context) {
                  return AjouterAnnonce();
                });
          },
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor("#C35E4E"),
              ),
              width: 64 * currentWidth / 428,
              height: 64 * currentHeight / 922,
              child: Image(image: AssetImage('images/+.png'))),
        ),
      ),
    )));
  }
}
