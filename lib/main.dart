import 'package:flutter/material.dart';
import 'package:resep_nusantara/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffFC4041),
        accentColor: Color(0xffFC4041),
        fontFamily: 'Tajawal-Bold'
      ),
      home: MainScreen(),
    );
  }
}
