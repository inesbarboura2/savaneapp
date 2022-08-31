import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:savaneapp/Screens/annoce_screen.dart';
import 'package:savaneapp/models/product.dart';
import 'package:provider/provider.dart';
import '../Providers/Products.dart';

class ConfirmationProduct extends StatelessWidget {
  Product newProducts;

  ConfirmationProduct({required this.newProducts});

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
          image: AssetImage('images/Vector22.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(children: [
        Image(
          image: AssetImage('images/Vector22.png'),
        ),
        Positioned(
            top: currentHeight * 0.05,
            right: currentWidth / 2 - 72,
            left: currentWidth / 2 - 72,
            child: Image(image: AssetImage('images/Ellipse17.png'))),
        Positioned(
            right: currentWidth / 2 - 29.19,
            left: currentWidth / 2 - 29.19,
            top: currentHeight * 0.11,
            child: Image(image: AssetImage('images/Vector2.png'))),
        Positioned(
          bottom: currentHeight * 0.30,
          right: 114,
          left: 114,
          child: Container(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Text(
                    'ANNONCE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Rubik'),
                  ),
                  Text('BIEN AJOUTE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Rubik')),
                ],
              )),
        ),
        Positioned(
          bottom: 165,
          right: 27,
          left: 27,
          child: Container(
            height: 60,
            width: 368,
            padding: EdgeInsets.only(top: 10),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    elevation: 0,
                    primary: Colors.white,
                    side: BorderSide(
                      color: Colors.white,
                    )),
                onPressed: () {
                  final productData =
                      Provider.of<Products>(context).addProduct(newProducts);
                  final newProduct = productData.item;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnnonceScreen()));
                },
                child: Text(
                  "Voir la liste des annonces",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ),
        Positioned(
            bottom: 0.0,
            child: Image.asset(
              'images/RougeSavane.png',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            )),
        Positioned(
            bottom: currentHeight * 0.115,
            child: Image(
              image: AssetImage('images/vector11.png'),
            )),
      ]),
    );
  }
}
