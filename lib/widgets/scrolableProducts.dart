import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import '../models/product.dart';
import 'package:hexcolor/hexcolor.dart';

class ScrolableProducts extends StatelessWidget {
  late List<Product> Products;
  ScrolableProducts({required this.Products});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 0, left: 30, right: 110),
                child: RichText(
                  text: TextSpan(
                    text: 'Liste des',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 31,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Annonces',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 31,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  ChopCard(
                    listeDeCouleur: [Colors.white, Colors.white],
                    ImageUrl: Products[0].ProductImage,
                    articleTitle: Products[0].ProductName,
                    articlePrice: Products[0].ProductPrice,
                  ),
                  ChopCard(
                    listeDeCouleur: [Colors.white, Colors.white],
                    ImageUrl: Products[1].ProductImage,
                    articleTitle: Products[1].ProductName,
                    articlePrice: Products[1].ProductPrice,
                  ),
                ],
              ),
              Row(
                children: [
                  ChopCard(
                    listeDeCouleur: [Colors.white, Colors.white],
                    ImageUrl: Products[2].ProductImage,
                    articleTitle: Products[2].ProductName,
                    articlePrice: Products[2].ProductPrice,
                  ),
                  ChopCard(
                    listeDeCouleur: [HexColor('#FFE2D2'), Colors.white],
                    ImageUrl: Products[3].ProductImage,
                    articleTitle: Products[3].ProductName,
                    articlePrice: Products[3].ProductPrice,
                  ),
                ],
              ),
              Container(
                width: 372,
                height: 55,
                margin:
                    EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 100),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 0,
                        primary: Colors.black,
                        side: BorderSide(
                          color: Colors.black,
                        )),
                    onPressed: () {},
                    child: Text(
                      "+ Voir Plus",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
