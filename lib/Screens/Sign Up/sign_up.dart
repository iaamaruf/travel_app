import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Screens/Forget%20Password%20Screen/forget_password_screen.dart';
import 'package:travel_app/Screens/Sing%20in/sign_in.dart';
import 'package:travel_app/Utilities/image.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = "SignUpScreen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final passwordTextController= TextEditingController();
  final emailTextController= TextEditingController();
  final NameTextController = TextEditingController();

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
        child:  Container(
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
                          child: Icon(Icons.arrow_back_ios_new,
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
                              "Sign Up Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ),
                          const SizedBox(height:5),
                          const Center(
                            child: Text(
                              "Please fill the details and creat account",
                              style: TextStyle(
                                fontFamily: 'Quicksand',
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
                                  controller: NameTextController,
                                  hintText: "Type Your Name",
                                  prefixIcon: Icon(Icons.mail,size: 25 ),
                                ),
                                const SizedBox(height: 8,),

                                LoginCustomInputField(
                                  controller: emailTextController,
                                  hintText: "Type Your Email",
                                  prefixIcon: Icon(Icons.mail,size: 25 ),
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
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      size: 22.0,
                                    ),
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                ),



                              ],
                            ),
                          ),
                          const SizedBox(height:5,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Passeord must be 8 charecter',
                                  style: TextStyle(fontSize:16,
                                      fontFamily: 'Quicksand',
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          DefaultButtonWithGradient(
                            paddingTop: 13,
                            paddingBottom: 13,
                            buttonText: "Sign Up",
                            color: Colors.blue,
                            onTap: () {
                              Navigator.of(context).pushNamed(SignInScreen.routeName);
                            },
                          ),
                          const SizedBox(height: 30,),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Already have an account?',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Quicksand',
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                                      },
                                      child: const Text(
                                        'Sign In',
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
              Spacer(),

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
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
