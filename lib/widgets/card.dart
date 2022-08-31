import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class ChopCard extends StatelessWidget {
  Image ImageUrl;
  String articleTitle;
  String articlePrice;
  List<Color> listeDeCouleur;
  ChopCard(
      {required this.ImageUrl,
      required this.articleTitle,
      required this.articlePrice,
      required this.listeDeCouleur});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        margin: EdgeInsets.only(top: 7, right: 15, bottom: 4),
        height: 280,
        child: Stack(
          children: [
            Container(
              width: 174,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                gradient: LinearGradient(
                  colors: listeDeCouleur,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 7, left: 28, right: 24, bottom: 51),
                child: ImageUrl,
              ),
            ),
            Positioned(
              left: 58,
              right: 56,
              top: 167,
              child: SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  child: Image(
                    image: AssetImage('images/Vector.png'),
                  ),
                  backgroundColor: Colors.black,
                  radius: 40.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 238, left: 61),
              width: 100,
              height: 20,
              child: Text(
                articleTitle,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 255, left: 63),
              width: 48,
              height: 19,
              child: Text(articlePrice,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Rubik')),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCardAjouterAnnoce extends StatelessWidget {
  File? image;
  ProductCardAjouterAnnoce({required this.image});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: HexColor('#EFEFEF'),
            ),
            width: currentWidth * 0.238,
            height: currentHeight * 0.110,
            child: Container(
              height: constraints.maxHeight * 0.9,
              width: constraints.maxWidth * 0.9,
              child: image != null
                  ? Image.file(
                      image!,
                      width: constraints.maxWidth * 0.9,
                      height: constraints.maxHeight * 0.9,
                    )
                  : Image(image: AssetImage('images/hat.png')),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        );
      },
    );
  }
}
