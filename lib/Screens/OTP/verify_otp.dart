import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Screens/home_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  static const String routeName = "VerifyOtpScreen";
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  final _formKey = GlobalKey<FormState>();
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  final passwordTextController = TextEditingController();
  final emailTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool PasswordHide = true;
  bool _obscureText = true;
  Duration myDuration = Duration(minutes: 2);

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(2));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
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
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.4),
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
                                    "OTP Verification ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                        fontSize: 25
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      "Please check your mail to see the verification code",
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'Quicksand',
                                          color: Colors.grey
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                const Text(
                                  "OTP Code ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(height: 20,),

                                      Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: List.generate(
                                                4,
                                                    (index) => SizedBox(
                                                  width: 50.0,
                                                  child: TextField(
                                                    controller: controllers[index],
                                                    maxLength: 1,
                                                    textAlign: TextAlign.center,
                                                    keyboardType: TextInputType.number,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      contentPadding: EdgeInsets.all(10.0),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.black, width: 1),
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                    ),
                                                    onChanged: (value) {
                                                      // You can add your logic here when the OTP is entered
                                                      print("Entered OTP: $value");
                                                      // Move to the next input field when a digit is entered
                                                      if (value.isNotEmpty && index < 3) {
                                                        FocusScope.of(context).nextFocus();
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),

                                DefaultButtonWithGradient(
                                  paddingTop: 13,
                                  paddingBottom: 13,
                                  buttonText: "Verify",
                                  color: Colors.blue,
                                  onTap: () {

                                    // _showDialog(context);
                                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "You ca send a new code in ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Quicksand',
                                          fontSize: 15,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "$minutes:$seconds ",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Quicksand',
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

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
