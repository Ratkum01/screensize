// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:koko4_ratkum/responsive/desktop_body.dart';
import 'package:koko4_ratkum/responsive/mobile_body.dart';
import 'package:koko4_ratkum/responsive/responsive_layout.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: Reponsive(mobileBody: MyMobileBody(), desktopBody: MyDesktopBody()),
    );
  }

  TextStyle styleTextone() => TextStyle(color: Colors.white, fontSize: 40);
}
