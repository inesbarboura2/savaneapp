import 'package:flutter/material.dart';
import 'package:savaneapp/Screens/inscriptionScreen.dart';
import 'package:savaneapp/Screens/profileScreen.dart';
import 'package:savaneapp/Screens/splashscreen.dart';
import 'Screens/annoce_screen.dart';
import 'Screens/inscriptionScreen.dart';
import 'models/product.dart';
import 'Screens/ConnexionScreen.dart';
import 'Providers/Products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Products()),
      child: MaterialApp(
        theme: ThemeData.light(),
        initialRoute: '/splash',
        routes: {
          '/inscription': ((context) => InscriptionScreen()),
          '/splash': ((context) => Splashscreen()),
          '/annonce': (context) => AnnonceScreen(),
          '/connexion': ((context) => ConnexionScreen()),
          '/profil': ((context) => ProfileScreen())
        },
      ),
    );
  }
}
