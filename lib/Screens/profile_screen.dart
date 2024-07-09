import 'package:flutter/material.dart';
import 'package:travel_app/Screens/edit_profile.dart';
import 'package:travel_app/Screens/favorite_place.dart';
import 'package:travel_app/Utilities/image.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "ProfileScreen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                  ),
                ),

                Spacer(),
                InkWell(

                  onTap: () {
                    Navigator.of(context).pushNamed(EiditProfile.routeName);
                  },
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
                    SizedBox(height: 10,),
                    const Text(
                      "Leonardo@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),

              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 78,
              width: double.infinity,
              padding:EdgeInsets.all(10),

              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius:2 ,
                    offset: Offset(0, 2), // changes the shadow position
                  ),
                ],
            ),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: [
                      Text(
                        "Reword Points",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "360",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  VerticalDivider(
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Travel Trips",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "238",
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  VerticalDivider(
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Bucket list",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "473",
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


            ),
            SizedBox(height: 10,),
            Container(
              height: 335,
              width: double.infinity,
              padding:EdgeInsets.all(10),


              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius:2 ,
                    offset: Offset(0, 2), // changes the shadow position
                  ),
                ],
              ),
              child:   Column(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10)),
                      Icon(Icons.person_outline,size: 28,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text(
                        "Prfile",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.grey,),

                    ],
                  ),
                  const Divider(
                    height: 30
                    ,
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(FavoritePlaceScreen.routeName);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 15)),
                        Icon(Icons.bookmark_border_rounded,size: 28,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text(
                          "Bookmarked",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.grey,),

                      ],
                    ),
                  ),
                  const Divider(
                    height: 30,
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 15)),
                      Icon(Icons.travel_explore,size: 28,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text(
                        "Previous Trips",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.grey,),

                    ],
                  ),
                  const Divider(
                    height: 30,
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 15)),
                      Icon(Icons.settings_outlined,size: 28,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.grey,),

                    ],
                  ),
                  const Divider(
                    height: 30,
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 15)),
                      Icon(Icons.settings_input_svideo,size: 28,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Text(
                        "Version",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.grey,),

                    ],
                  ),
                  const Divider(
                    height: 30,
                    color:Colors.grey,
                    thickness: 0.5,
                  ),


                ],
              ),


            ),
         ]
        )


      ),
    );
  }
}
