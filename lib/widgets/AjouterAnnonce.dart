import 'dart:io';

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

class AjouterAnnonce extends StatefulWidget {
  const AjouterAnnonce({Key? key}) : super(key: key);

  @override
  State<AjouterAnnonce> createState() => _AjouterAnnonceState();
}

class _AjouterAnnonceState extends State<AjouterAnnonce> {
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

  late String productName;
  late String productPrice;
  late String ProductCategorie;
  late String ProductDescription;
  late Product newProduct = Product(
      ProductImage: Image.file(image!),
      ProductName: productName,
      ProductPrice: productPrice);
  final _priceFocusNode = FocusNode();
  final _DescriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final List<String> itemsList = [
      'Agriculture',
      'Transport',
      'BTP',
      "Categories"
    ];
    int RadioButtonValue = 0;
    String? selectedItem = "Categories";
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 0),
          height: currentHeight * 0.9,
          width: currentWidth,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0),
            image: DecorationImage(
              image: AssetImage('images/bachground2.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: currentHeight * 0.03),
                  child: Column(children: [
                    Text(
                      "Déposer",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 34 * (currentHeight / 922),
                          color: Colors.black),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'votre',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 34 * (currentHeight / 922),
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Annonces',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 34 * (currentHeight / 922),
                                  color: Colors.black))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 12),
                child: Row(
                  children: [
                    ProductCardAjouterAnnoce(
                      image: image,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      width: currentWidth * 0.244,
                      height: currentHeight * 0.110,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 0,
                            side: BorderSide(color: HexColor('#DDDDDD')),
                          ),
                          onPressed: () => pickImage(),
                          child: Icon(
                            Icons.add,
                            color: HexColor('#8E8E8E'),
                            size: 27,
                          )),
                    )
                  ],
                ),
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: currentHeight * 0.032,
                          left: currentWidth * 0.028,
                          right: currentWidth * 0.028),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Nom du Produit/Service',
                          constraints: BoxConstraints(
                              maxWidth: currentWidth * 0.859, maxHeight: 15),
                          border: UnderlineInputBorder(),
                          hintStyle: TextStyle(
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            fontSize: 17 * (currentHeight / 922),
                            color: HexColor('#C0C0C0'),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(() {
                            productName = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: currentHeight * 0.032,
                          left: currentWidth * 0.028,
                          right: currentWidth * 0.028),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Prix(Euro)',
                          constraints: BoxConstraints(
                              maxWidth: currentWidth * 0.859, maxHeight: 15),
                          border: UnderlineInputBorder(),
                          hintStyle: TextStyle(
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            fontSize: 17 * (currentHeight / 922),
                            color: HexColor('#C0C0C0'),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        focusNode: _priceFocusNode,
                        onChanged: (value) {
                          setState(() {
                            productPrice = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: currentHeight * 0.032,
                          left: currentWidth * 0.028,
                          right: currentWidth * 0.028),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          constraints:
                              BoxConstraints(maxWidth: currentWidth * 0.859),
                          hintStyle: TextStyle(
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            fontSize: 17 * (currentHeight / 922),
                            color: HexColor('#C0C0C0'),
                          ),
                          hintText: 'Catégorie',
                          contentPadding: EdgeInsets.all(0),
                        ),
                        items: <String>['Agriculture', 'Transport', 'BTP']
                            .map((item) => DropdownMenuItem<String>(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          ProductCategorie = item.toString();
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: currentHeight * 0.032,
                          left: currentWidth * 0.028,
                          right: currentWidth * 0.028),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Description',
                          constraints: BoxConstraints(
                            maxWidth: currentWidth * 0.859,
                          ),
                          border: UnderlineInputBorder(),
                          hintStyle: TextStyle(
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            fontSize: 17 * (currentHeight / 922),
                            color: HexColor('#C0C0C0'),
                          ),
                        ),
                        maxLines: 3,
                        focusNode: _DescriptionFocusNode,
                        onFieldSubmitted: (value) {
                          ProductDescription = value;
                        },
                        keyboardType: TextInputType.multiline,
                      ),
                    )
                  ],
                ),
              ),
              ConditionRadioButton(),
              Container(
                height: currentHeight * 0.16,
                width: currentWidth,
                margin: EdgeInsets.only(
                  top: 13,
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
                      onPressed: () {
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(200))),
                            builder: (BuildContext context) {
                              return ConfirmationProduct(
                                newProducts: newProduct,
                              );
                            });
                      },
                    ),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
