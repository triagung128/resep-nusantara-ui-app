import 'package:flutter/material.dart';
import 'package:resep_nusantara/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Nusantara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFC4041),
        fontFamily: 'Tajawal-Bold',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xffFC4041),
        ),
      ),
      home: MainScreen(),
    );
  }
}
