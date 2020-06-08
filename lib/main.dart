import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiatu_store/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kiatu Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // option sofiaTextTheme
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}
