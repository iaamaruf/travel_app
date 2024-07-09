import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Screens/Sing%20in/sign_in.dart';
import 'package:travel_app/Screens/onboard2.dart';
import 'package:travel_app/Screens/onbord1.dart';
import 'package:travel_app/Utilities/image.dart';
import 'package:travel_app/Utilities/page_indicator.dart';

class OnBoardThreeScreen extends StatefulWidget {
  static const String routeName = "OnBoardThreeScreen";
  const OnBoardThreeScreen({super.key});

  @override
  State<OnBoardThreeScreen> createState() => _OnBoardThreeScreenState();
}

class _OnBoardThreeScreenState extends State<OnBoardThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child:Image.asset(
                AppImage.getPath("OnBoard3"),
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
                        AppImage.getPath("onBord3Text"),
                        fit: BoxFit.fill,)

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25,top: 30),
                  child: Text(
                    "To get the best of your adventure you just need "
                        "to leave and go where you like. we are waiting for you",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',


                    ),
                  ),
                ),
                SizedBox(height: 20,),

                PageIndicator(currentValue: 2)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              paddingBottom: 13,
              paddingTop: 13,
              buttonText: "Next",
              onTap: (){
                Navigator.of(context).pushNamed(SignInScreen.routeName);

              },),
          ),

        ],
      ),
    );
  }
}
