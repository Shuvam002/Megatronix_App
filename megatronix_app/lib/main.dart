import 'package:flutter/material.dart';
import 'package:megatronix_app/Pages/About_Us.dart';
import 'package:megatronix_app/Pages/Contact_Us.dart';
import 'package:megatronix_app/Pages/Event.dart';
import 'package:megatronix_app/Pages/Gallery.dart';
import 'package:megatronix_app/Pages/Home.dart';
import 'package:megatronix_app/Pages/Login.dart';
import 'package:megatronix_app/Pages/Logout.dart';
import 'package:megatronix_app/Pages/Team.dart';

import 'Pages/Signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home', // Set the initial route
    routes: {
      '/login': (context) => MyLogin(),
      '/signup': (context) => MyRegister(),
      '/home': (context) => HomePage(),
      '/team': (context) => TeamPage(),
      '/event': (context) => EventPage(),
      '/about': (context) => AboutUsPage(),
      '/contact': (context) => ContactUsPage(),
      '/gallery': (context) => GalleryPage(),
      '/logout': (context) => LogoutPage(),
    },
  ));
}
