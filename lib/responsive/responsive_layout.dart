// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'dimensions.dart';

class Reponsive extends StatelessWidget {
   Reponsive({super.key, required this.mobileBody, required this.desktopBody});
  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth<mobileWidth){
          return mobileBody;
        }
        else{
          return desktopBody;
        }
      },
    );
  }
}
