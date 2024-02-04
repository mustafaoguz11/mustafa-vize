import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/aboutusscreen.dart';
import 'package:flutter_application_1/screens/contactusscreen.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/loginscreen.dart';
import 'package:flutter_application_1/screens/profilescreen.dart';
import 'package:flutter_application_1/screens/registerscreen.dart';
import 'package:flutter_application_1/screens/settingsscreen.dart';
import 'package:flutter_application_1/screens/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mustafa oğuz',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => homescreen(),
        '/login': (context) => loginscreen(),
        '/register': (context) => registerscreen(),
        '/profile': (context) => profilescreen(),
        '/welcome': (context) => welcomescreen(),
        '/settings': (context) => settingsscreen(),
        '/aboutus': (context) => aboutusscreen(),
        '/contactus': (context) => contactusscreen(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
    );
  }
}
