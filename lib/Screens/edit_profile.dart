import 'package:flutter/material.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Utilities/image.dart';

class EiditProfile extends StatefulWidget {
  static const String routeName = "EiditProfile";
  const EiditProfile({super.key});

  @override
  State<EiditProfile> createState() => _EiditProfileState();
}

class _EiditProfileState extends State<EiditProfile> {

  final emailTextController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back_ios_new,size: 20,
                            color: Colors.black,),
                        )
                    ),
                    Spacer(),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Colors.black,
                      ),
                    ),

                    Spacer(),
                    InkWell(

                      // onTap: () {
                      //   // Navigator.of(context).pushNamed(routeName);
                      // },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(35),

                        ),
                        child: Icon(Icons.edit,color: Colors.blue,size: 20,),

                      ),
                    )



                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 100,
                            width: 100,

                            decoration: BoxDecoration(
                              color: Colors.pink.shade100,
                              borderRadius: BorderRadius.circular(55),
                            ),
                            child:Image.asset(
                              AppImage.getPath("profilepic"),
                              fit: BoxFit.fill,)

                        ),

                        SizedBox(height: 15,),
                        const Text(
                          "Leonardo",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 5,),
                        const Text(
                          "Change Profile Picture",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                              fontFamily: 'Quicksand',
                            color: Colors.blue
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),

               const Padding(
                 padding: EdgeInsets.only(left: 10.0, right: 10),
                 child:Text(
                   'First Name',
                   style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     fontFamily: 'Quicksand',
                     color: Colors.black,
                   ),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: LoginCustomInputField(
                    controller: emailTextController,
                    hintText: "Leonardo",
                  ),
                ),
                SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child:Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: LoginCustomInputField(
                    controller: emailTextController,
                    hintText: "Ahmed",
                  ),
                ),
                SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child:Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: LoginCustomInputField(
                    controller: emailTextController,
                    hintText: "Sylhet Bangladesh",
                  ),
                ),
                SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child:Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: LoginCustomInputField(
                    controller: emailTextController,
                    hintText: "01758000666",
                  ),
                ),


              ]
          )


      ),
    );
  }
}
