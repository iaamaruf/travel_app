import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/Screens/onbord1.dart';
import 'package:travel_app/Utilities/image.dart';
import 'package:travel_app/Utilities/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushNamedAndRemoveUntil(GetStartScreen.routeName,(route) => false);
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width:double.infinity,
        color: Colors.blueAccent,
        child: Center(
          child: Container(
            height: 60,
            width: 160,
            child: Image.asset(AppImage.getPath("splashLogo"),
                fit:BoxFit.fill,color: Colors.white,),
          ),

      ),
      )
    );


  }
}