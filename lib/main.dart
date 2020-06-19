import 'package:AplikasiPariwisataFlutter/places/places_screen.dart';
import 'package:AplikasiPariwisataFlutter/screens/detail_screen.dart';
import 'package:AplikasiPariwisataFlutter/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/category_screens.dart';
import 'places/places_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Wisata',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.blue,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              subhead: TextStyle(fontWeight: FontWeight.bold),
            ),
      ),
      routes: {
        '/': (ctx) => SplashScreen(),
        '/places': (ctx) => PlacesScreen(),
        '/detail': (ctx) => DetailScreen(),
      },
    );
  }
}
