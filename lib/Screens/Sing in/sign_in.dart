import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Screens/Forget%20Password%20Screen/forget_password_screen.dart';
import 'package:travel_app/Screens/Sign%20Up/sign_up.dart';
import 'package:travel_app/Screens/home_screen.dart';
import 'package:travel_app/Utilities/image.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = "SignInScreen";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  final passwordTextController= TextEditingController();
  final emailTextController= TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool PasswordHide = true;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child:  Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child:  Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(Icons.arrow_back_ios_sharp,
                                color: Colors.black,),
                            ),
                          )
                      ),


                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [

                        SizedBox(height: 30),
                        Form(
                          key: _formKey,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Center(
                                child: Text(
                                  "Sign In Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                    fontFamily: 'Quicksand',
                                  ),
                                ),
                              ),
                              const SizedBox(height:5),
                              const Center(
                                child: Text(
                                  "Please Sign in to continue our app",
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(height: 20,),

                                    LoginCustomInputField(
                                      controller: emailTextController,
                                      hintText: "Type Your Email",
                                    ),
                                    const SizedBox(height: 8,),

                                    LoginCustomInputField(
                                      controller: passwordTextController,
                                      validator: (value) {
                                        if(value!.isEmpty){
                                          return "Password can't be empty";
                                        }
                                        return null;
                                      },
                                      hintText: "Type New Password",
                                      obscureText: isPasswordHide,
                                      suffixWidget: InkWell(
                                        onTap: () {
                                          setState(() {
                                            isPasswordHide =
                                            !isPasswordHide;
                                          });
                                        },
                                        child: Icon(
                                          isPasswordHide
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22.0,
                                        ),
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                              const SizedBox(height:5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: GestureDetector(
                                      onTap: ()   async {
                                        Navigator.of(context).pushNamed(ForgetPaswoordScreen.routeName);
                                      },
                                      child: const Text(
                                        'Forget password?',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30,),
                              DefaultButtonWithGradient(
                                paddingTop: 13,
                                paddingBottom: 13,
                                buttonText: "Sign In",
                                color: Colors.blue,
                                onTap: () {
                                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                                },
                              ),
                              const SizedBox(height: 20,),

                               Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Dont have account?',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pushNamed(SignUpScreen.routeName);
                                          },
                                          child: const Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Quicksand',
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Or Contact',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),

                                ],
                              ),




                            ],
                          ),
                        ),


                      ],
                    ),

                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            child:Image.asset(
                              AppImage.getPath("fb_logo"),
                              fit: BoxFit.fill,)
                        ),
                        SizedBox(width: 15,),
                        Container(
                            height: 50,
                            width: 50,
                            child:Image.asset(
                              AppImage.getPath("insta_logo"),
                              fit: BoxFit.fill,)
                        ),
                        SizedBox(width: 15,),
                        Container(
                            height: 50,
                            width: 50,
                            child:Image.asset(
                              AppImage.getPath("twit_logo"),
                              fit: BoxFit.fill,)
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
