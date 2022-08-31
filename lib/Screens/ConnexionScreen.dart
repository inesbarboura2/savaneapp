import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/inscriptionScreen.dart';

class ConnexionScreen extends StatefulWidget {
  const ConnexionScreen({Key? key}) : super(key: key);

  @override
  State<ConnexionScreen> createState() => _ConnexionScreenState();
}

class _ConnexionScreenState extends State<ConnexionScreen> {
  @override
  bool isHidden = true;

  int RadioButtonValue = 0;
  final passwordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              top: (25 * currentHeight) / 922, left: (30 * currentWidth) / 428),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                      backgroundColor: HexColor("#F3F3F3"),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 19,
                              top: 26,
                              child: Image(
                                image: AssetImage("images/flech1.png"),
                              )),
                          Positioned(
                            top: 19,
                            left: 15,
                            child: Image(
                              image: AssetImage("images/flech2.png"),
                            ),
                          )
                        ],
                      ))),
              Padding(
                padding: EdgeInsets.only(top: (32 * currentHeight) / 922),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Content',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40 * (currentHeight / 922),
                          color: Colors.black),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'de vous',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 45 * (currentHeight / 922),
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Revoire',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40 * (currentHeight / 922),
                                  color: Colors.black))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: (37 * currentHeight) / 922),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Continuer avec",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: currentHeight * (28 / 922)),
                      child: Form(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: (28 * currentHeight) / 922,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Container(
                                    width: 10,
                                    child: Stack(children: [
                                      Positioned(
                                          bottom: 5,
                                          child: Image(
                                              image: AssetImage(
                                                  "images/email1.png"))),
                                      Positioned(
                                          bottom: 11,
                                          child: Image(
                                              image: AssetImage(
                                                  "images/email2.png"))),
                                    ]),
                                  ),
                                  hintText: 'E-mail',
                                  constraints: BoxConstraints(
                                      maxWidth: currentWidth * 0.859,
                                      maxHeight: 21),
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
                            Padding(
                              padding: EdgeInsets.only(
                                top: currentHeight * 0.039,
                              ),
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
                                            child: Image(
                                                image: AssetImage(
                                                    "images/mdp1.png")),
                                          ),
                                          Positioned(
                                            bottom: 15,
                                            left: 3,
                                            child: Image(
                                                image: AssetImage(
                                                    "images/mdp2.png")),
                                          )
                                        ],
                                      )),
                                  hintText: 'Mot de passe',
                                  constraints: BoxConstraints(
                                      maxWidth: currentWidth * 0.859,
                                      maxHeight: 24.5),
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
                                onChanged: (value) {},
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: currentHeight * (0 / 922),
                                    right: 0,
                                    left: 200),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Mot de passe oublié?",
                                      style: TextStyle(
                                        color: HexColor("#515151"),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ))),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 60,
                                width: 368,
                                margin: EdgeInsets.only(
                                  top: (currentHeight * 30) / 922,
                                ),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/Rectangle3.png"))),
                                child: Center(
                                  child: Text(
                                    "Se connecter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: (150 * currentHeight) / 922),
                              width: (368 * currentWidth) / 428,
                              height: (78 * currentHeight) / 922,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(24))),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Se connecter avec',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: HexColor("#646464")),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: ' Face ID',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17,
                                                    color: HexColor("#646464")))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 50),
                                        height: 40,
                                        width: 50,
                                        padding: EdgeInsets.only(left: 13),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                child: Image(
                                                    image: AssetImage(
                                                        "images/face1.png"))),
                                            /*Positioned(
                                              bottom: 0,
                                              left: -2,
                                              child: Image(
                                                  image: AssetImage(
                                                      "images/face2.png")),
                                            ),
                                            Positioned(
                                              child: Image(
                                                  image: AssetImage(
                                                      "images/face3.png")),
                                            ),
                                            Positioned(
                                              left: 27,
                                              child: Image(
                                                  image: AssetImage(
                                                      "images/face4.png")),
                                            ),
                                            Positioned(
                                              left: 27,
                                              bottom: 0,
                                              child: Image(
                                                  image: AssetImage(
                                                      "images/face5.png")),
                                            ),*/
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: currentHeight * (22 / 922), left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "Vous n'avez pas de compte?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: HexColor("#B4B4B4"),
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return InscriptionScreen();
                                        })));
                                      },
                                      child: Text(
                                        "S'inscrire",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 16.5,
                                            fontWeight: FontWeight.w400,
                                            color: HexColor("#545454")),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
