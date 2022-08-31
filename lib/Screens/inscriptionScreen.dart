import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savaneapp/Screens/ConnexionScreen.dart';
import '../widgets/ConnexionMode.dart';

class InscriptionScreen extends StatefulWidget {
  const InscriptionScreen({Key? key}) : super(key: key);

  @override
  State<InscriptionScreen> createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  @override
  bool isHidden = true;
  bool isHidden2 = true;
  int RadioButtonValue = 0;
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    passwordController1.dispose();
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
              top: currentHeight * 0.05089, left: currentHeight * 0.0299),
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
                padding: EdgeInsets.only(top: currentHeight * 0.0347),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Créer',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40 * (currentHeight / 922),
                          color: Colors.black),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'votre ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 45 * (currentHeight / 922),
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Compte',
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
              Expanded(
                flex: 7,
                child: Container(
                  padding: EdgeInsets.only(top: 0.0412 * currentHeight),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "S'inscrire avec",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: currentHeight * 0.014),
                          child: Row(
                            children: [
                              Container(
                                height: currentHeight * 0.0650,
                                width: currentWidth * 0.433,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40))),
                                    onPressed: () {},
                                    child: Text(
                                      "Google",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    )),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: currentWidth * 0.028),
                                child: Container(
                                  height: currentHeight * 0.0650,
                                  width: currentWidth * 0.433,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40))),
                                      onPressed: () {},
                                      child: Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: currentHeight * 0.05856),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: currentWidth * 0.035),
                                child: Image(
                                    image: AssetImage("images/Line1.png")),
                              ),
                              Text("Ou"),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: currentWidth * 0.035),
                                child: Image(
                                  image: AssetImage('images/Line2.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: currentHeight * 0.0444),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 5,
                                      child: Stack(children: [
                                        Positioned(
                                          bottom: 14,
                                          left: 4,
                                          child: Image(
                                              image: AssetImage(
                                                  "images/Nom1.png")),
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          child: Image(
                                              image: AssetImage(
                                                  "images/Nom2.png")),
                                        )
                                      ]),
                                    ),
                                    hintText: 'Nom & Prénom',
                                    constraints: BoxConstraints(
                                        maxWidth: currentWidth * 0.859,
                                        maxHeight: 24),
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
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: currentHeight * 0.039,
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
                                    decoration: InputDecoration(
                                      prefixIcon: Container(
                                        width: 10,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              bottom: 5,
                                              child: Image(
                                                  image: AssetImage(
                                                      "images/phone.png")),
                                            )
                                          ],
                                        ),
                                      ),
                                      hintText: 'Téléphone',
                                      constraints: BoxConstraints(
                                          maxWidth: currentWidth * 0.859,
                                          maxHeight: 23.5),
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
                                    textInputAction: TextInputAction.next,
                                    onChanged: (value) {},
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: currentHeight * 0.039),
                                  child: TextFormField(
                                    controller: passwordController1,
                                    obscureText: isHidden2,
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
                                      hintText: 'Confirmar le mot de passe',
                                      suffixIcon: Container(
                                        height: 10,
                                        width: 10,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              bottom: -12,
                                              child: IconButton(
                                                icon: isHidden2
                                                    ? Icon(Icons.visibility_off)
                                                    : Icon(Icons.visibility),
                                                onPressed: () {
                                                  setState(() {
                                                    isHidden2 = !isHidden2;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      constraints: BoxConstraints(
                                          maxWidth: currentWidth * 0.859,
                                          maxHeight: 24.5),
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
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: currentHeight * 0.0401,
                                    left: currentWidth * 0.00,
                                    bottom: currentHeight * (22 / 922),
                                  ),
                                  child: RadioListTile(
                                      title: Text(
                                          "J'ai veux recevoir les nouveautés de",
                                          style: TextStyle(
                                              fontFamily: 'Rubik',
                                              fontSize:
                                                  17 * (currentHeight / 922),
                                              fontWeight: FontWeight.w300)),
                                      subtitle: Text(
                                          "Savane par e-mail ou Newsletter",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Rubik',
                                              fontSize:
                                                  17 * (currentHeight / 922),
                                              fontWeight: FontWeight.w300)),
                                      value: 1,
                                      groupValue: RadioButtonValue,
                                      onChanged: (value) => setState(() {
                                            RadioButtonValue = 1;
                                          })),
                                ),
                                Image(image: AssetImage("images/Line3.png")),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: currentHeight * (22 / 922),
                                    left: currentWidth * 0.00,
                                  ),
                                  child: RadioListTile(
                                      title: Text(
                                          "J'ai lu et compris les informations des",
                                          style: TextStyle(
                                              fontFamily: 'Rubik',
                                              fontSize:
                                                  17 * (currentHeight / 922),
                                              fontWeight: FontWeight.w300)),
                                      subtitle: InkWell(
                                          child: new Text(
                                              'Conditions Générales',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontFamily: 'Rubik',
                                                  fontSize: 17 *
                                                      (currentHeight / 922),
                                                  fontWeight: FontWeight.w300)),
                                          onTap: () {}),
                                      value: 1,
                                      groupValue: RadioButtonValue,
                                      onChanged: (value) => setState(() {
                                            RadioButtonValue = 1;
                                          })),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: currentHeight * 0.174,
                child: Column(children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(200))),
                          builder: (BuildContext context) {
                            return ConnexionMode();
                          });
                    },
                    child: Container(
                      height: 60,
                      width: 368,
                      margin: EdgeInsets.only(
                          top: currentHeight * (23 / 922),
                          left: currentWidth * (0 / 428)),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/Rectangle3.png"))),
                      child: Center(
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: (currentHeight * 10) / 922, left: 55),
                    child: Row(
                      children: [
                        Text(
                          "J'ai deja un compte?",
                          style: TextStyle(
                              color: HexColor("#B4B4B4"),
                              fontSize: 16.5,
                              fontWeight: FontWeight.w300),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return ConnexionScreen();
                              })));
                            },
                            child: Text(
                              "S'identifier",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#545454")),
                            ))
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
