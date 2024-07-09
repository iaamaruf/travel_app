import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Forget%20Password%20Screen/forget_password_screen.dart';
import 'package:travel_app/Screens/OTP/verify_otp.dart';
import 'package:travel_app/Screens/Sign%20Up/sign_up.dart';
import 'package:travel_app/Screens/Sing%20in/sign_in.dart';
import 'package:travel_app/Screens/book_now.dart';
import 'package:travel_app/Screens/edit_profile.dart';
import 'package:travel_app/Screens/favorite_place.dart';
import 'package:travel_app/Screens/home.dart';
import 'package:travel_app/Screens/home_screen.dart';
import 'package:travel_app/Screens/message.dart';
import 'package:travel_app/Screens/niladri.dart';
import 'package:travel_app/Screens/onboard2.dart';
import 'package:travel_app/Screens/onboard3.dart';
import 'package:travel_app/Screens/onbord1.dart';
import 'package:travel_app/Screens/popular_package.dart';
import 'package:travel_app/Screens/popular_place.dart';
import 'package:travel_app/Screens/profile_screen.dart';
import 'package:travel_app/Screens/schedule_screen.dart';
import 'package:travel_app/Screens/serch_screen.dart';
import 'package:travel_app/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context)=>SplashScreen(),
        GetStartScreen.routeName : (context)=> const GetStartScreen(),
        OnboardTwoScreen.routeName : (context)=> const OnboardTwoScreen(),
        OnBoardThreeScreen.routeName : (context)=> const OnBoardThreeScreen(),
        SignInScreen.routeName : (context)=> const SignInScreen(),
        SignUpScreen.routeName : (context)=> const SignUpScreen(),
        ForgetPaswoordScreen.routeName : (context)=> const ForgetPaswoordScreen(),
        VerifyOtpScreen.routeName : (context)=> const VerifyOtpScreen(),
        home.routeName : (context)=> const home(),
        HomeScreen.routeName : (context)=> const HomeScreen(),
        NiladriReservoirScreen.routeName : (context)=> const NiladriReservoirScreen(),
        BookNowScreen.routeName : (context)=> const BookNowScreen(),
        ScheduleScreen.routeName : (context)=> const ScheduleScreen(),
        PopularPlaceScreen.routeName : (context)=> const PopularPlaceScreen(),
        ProfileScreen.routeName : (context)=> const ProfileScreen(),
        EiditProfile.routeName : (context)=> const EiditProfile(),
        PopularPackageScreen.routeName : (context)=> const PopularPackageScreen(),
        FavoritePlaceScreen.routeName : (context)=> const FavoritePlaceScreen(),
        SearchScreen.routeName : (context)=> const SearchScreen(),
        MessageScreen.routeName : (context)=> const MessageScreen(),

      },
    );
  }
}

