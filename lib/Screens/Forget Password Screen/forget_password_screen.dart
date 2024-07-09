import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Screens/OTP/verify_otp.dart';
import 'package:travel_app/Utilities/image.dart';

class ForgetPaswoordScreen extends StatefulWidget {
  static const String routeName = "ForgetPaswoordScreen";
  const ForgetPaswoordScreen({super.key});

  @override
  State<ForgetPaswoordScreen> createState() => _ForgetPaswoordScreenState();
}

class _ForgetPaswoordScreenState extends State<ForgetPaswoordScreen> {
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
      body: SingleChildScrollView(
        child: SafeArea(
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
                                    "Forgot Password",
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
                                    "Enter your mail account to reset \nyour password",
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                        fontFamily: 'Quicksand',
                                      color: Colors.grey
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(height: 20,),

                                      LoginCustomInputField(
                                        controller: emailTextController,
                                        hintText: "Type Your Email",
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),

                                DefaultButtonWithGradient(
                                  paddingTop: 13,
                                  paddingBottom: 13,
                                  buttonText: "Reset Password",
                                  color: Colors.blue,
                                  onTap: () {
                                    // Call the function to show the dialog
                                    // _showDialog(context);
                                    Navigator.of(context).pushNamed(VerifyOtpScreen.routeName);
                                  },
                                ),


                              ],
                            ),
                          ),


                        ],
                      ),

                    ),

                  ],
                ),
              ),
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

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SizedBox(
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 42,
                  width: 42,
                  child:Image.asset(
                    AppImage.getPath("mailCheck_PopupLogo"),
                    fit: BoxFit.fill,)
              ),
              const SizedBox(height: 8,),
              const Text(
                "check your mail ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                ),
              ),
              SizedBox(height: 8,),
              const Text(
                "We have sent password recovary instruction to yuour mail",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}