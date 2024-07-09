import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Screens/onboard2.dart';
import 'package:travel_app/Utilities/image.dart';

import '../Utilities/page_indicator.dart';

class GetStartScreen extends StatefulWidget {
  static const String routeName = "GetStartScreen";

  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    var currentValue=0;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child:Image.asset(
                AppImage.getPath("OnBoard1"),
                fit: BoxFit.fill,)
          ),
          Expanded(
            child:  Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30, top: 30),
                  child:  Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      ),
                      child:Image.asset(
                        AppImage.getPath("onBord1Text"),
                        fit: BoxFit.fill,)

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25,top: 30),
                  child: Text(
                    "At Friends tours and travel, we customize "
                        "reliable and trutworthy educational tours "
                        "to destinations all over the world",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',


                    ),
                  ),
                ),
                SizedBox(height: 20,),

                PageIndicator(currentValue: 0)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              paddingBottom: 13,
              paddingTop: 13,
              buttonText: "Get Started",
              onTap: (){
                Navigator.of(context).pushNamed(OnboardTwoScreen.routeName);


              },),
          ),

        ],
      ),
    );
  }
}