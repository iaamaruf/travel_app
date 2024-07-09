import 'package:flutter/material.dart';
import 'package:travel_app/Screens/message.dart';
import 'package:travel_app/Screens/niladri.dart';
import 'package:travel_app/Screens/popular_package.dart';
import 'package:travel_app/Screens/profile_screen.dart';
import 'package:travel_app/Screens/schedule_screen.dart';
import 'package:travel_app/Screens/serch_screen.dart';
import 'package:travel_app/Utilities/image.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> Screen = [
    HomeScreen(),
    ScheduleScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget CurrentScreeen= HomeScreen();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(35),

                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(ProfileScreen.routeName);
                            },

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 65,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child:Image.asset(
                                    AppImage.getPath("homePic"),
                                    fit: BoxFit.fill,)

                              ),
                              SizedBox(width: 5,),
                              const Text(
                                "Leonardo",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(35),

                        ),
                        child: Icon(Icons.notification_add),

                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          AppImage.getPath("TextPic"),
                          fit: BoxFit.fill,),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                   Row(
                    children: [
                      const Text(
                        "Best Destination",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Quicksand',
                          fontSize: 25,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap:() {
                          Navigator.of(context).pushNamed( PopularPackageScreen.routeName);
                        },
                        child: const Text(
                          "view all ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ),
                    ],
                  ),

                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(

                            onTap: () {
                              Navigator.of(context).pushNamed(NiladriReservoirScreen.routeName);
                            },

                            child: Container(

                              height: 400,
                              width: 262,
                              padding:EdgeInsets.all(8),

                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius:2 ,
                                    offset: Offset(0, 2), // changes the shadow position
                                  ),
                                ],

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Container(
                                      height: 280,
                                      width: 242,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,

                                        borderRadius: BorderRadius.circular(15),
                                      ),

                                      child:Image.asset(
                                        AppImage.getPath("Niladri"),
                                        fit: BoxFit.fill,)
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(7),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8),

                                        Row(
                                          children: [
                                            Text(
                                              'Niladri Reservoir',
                                              style: TextStyle(fontSize:20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  color: Colors.black),
                                            ),
                                            Spacer(),
                                            Icon(Icons.star,color: Colors.yellow,),
                                            SizedBox(width: 4,),
                                            Text(
                                              "4.7",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Quicksand',


                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_sharp,color: Colors.grey,),
                                            Text(
                                              'TekerGhat Sunamgange',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Quicksand',

                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),

                            ),
                          ),
                          InkWell(

                            child: Container(

                              height: 400,
                              width: 262,
                              padding:EdgeInsets.all(8),

                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius:2 ,
                                    offset: Offset(0, 2), // changes the shadow position
                                  ),
                                ],

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Container(
                                      height: 280,
                                      width: 242,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,

                                        borderRadius: BorderRadius.circular(15),
                                      ),

                                      child:Image.asset(
                                        AppImage.getPath("Niladri"),
                                        fit: BoxFit.fill,)
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(7),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8),

                                        Row(
                                          children: [
                                            Text(
                                              'Drama',
                                              style: TextStyle(fontSize:22,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Quicksand',
                                                  color: Colors.black),
                                            ),

                                            Spacer(),
                                            Icon(Icons.star,color: Colors.yellow,),
                                            SizedBox(width: 4,),
                                            Text(
                                              "4.7",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Quicksand',


                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_sharp,color: Colors.grey,),
                                            Text(
                                              'Kuningan',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.w500,

                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),

                            ),
                          ),
                          InkWell(

                            child: Container(

                              height: 400,
                              width: 262,
                              padding:EdgeInsets.all(8),

                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius:2 ,
                                    offset: Offset(0, 2), // changes the shadow position
                                  ),
                                ],

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Container(
                                      height: 280,
                                      width: 242,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,

                                        borderRadius: BorderRadius.circular(15),
                                      ),

                                      child:Image.asset(
                                        AppImage.getPath("Niladri"),
                                        fit: BoxFit.fill,)
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(7),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8),

                                        Row(
                                          children: [
                                            Text(
                                              'High Reck',
                                              style: TextStyle(fontSize:22,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Quicksand',
                                                  color: Colors.black),
                                            ),
                                            Spacer(),
                                            Icon(Icons.star,color: Colors.yellow,),
                                            SizedBox(width: 4,),
                                            Text(
                                              "4.7",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Quicksand',


                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_sharp,color: Colors.grey,),
                                            Text(
                                              'Zero Point, Shylhet',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.w500,

                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),

                            ),
                          ),

                        ],
                      )
                  ),



                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.white,
        //   elevation: 8.0,
        //
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       CustomBottomBarItem(
        //         icon: Icons.home,
        //         label: 'Home',
        //         onPressed: () {
        //           Navigator.of(context).pushNamed( HomeScreen.routeName);
        //         },
        //       ),
        //
        //       CustomBottomBarItem(
        //         icon: Icons.calendar_month_outlined,
        //         label: 'Calender',
        //         onPressed:() {
        //           Navigator.of(context).pushNamed( ScheduleScreen.routeName);
        //         },
        //       ),
        //       CustomBottomBarItem(
        //         icon: Icons.search,
        //         label: 'Search',
        //         onPressed:() {
        //           Navigator.of(context).pushNamed( SearchScreen.routeName);
        //         },
        //       ),
        //       CustomBottomBarItem(
        //         icon: Icons.message,
        //         label: 'Message',
        //         onPressed: (){
        //           Navigator.of(context).pushNamed( MessageScreen.routeName);
        //         },
        //       ),
        //       CustomBottomBarItem(
        //         icon: Icons.person,
        //         label: 'Profile',
        //         onPressed:() {
        //           Navigator.of(context).pushNamed( ProfileScreen.routeName);
        //         },
        //       ),
        //     ],
        //
        //   ),
        //
        // ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.search, color: Colors.white,size: 28,),
          onPressed: (){
            Navigator.of(context).pushNamed(SearchScreen.routeName);
          },
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape:CircularNotchedRectangle(),

          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          CurrentScreeen=HomeScreen();
                          currentTab = 0;

                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.home_filled,
                          //   color: currentTab== 0? Colors.blue: Colors.grey,
                          // ),
                          Image.asset(
                            AppImage.getPath("home_icon"),
                            color: currentTab== 0? Colors.blue: Colors.grey,
                            ),
                          Text('Home',
                            style: TextStyle(
                              fontSize: 16,
                              color: currentTab== 0? Colors.blue: Colors.grey,),
                          )
                        ],
                      ),


                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          // CurrentScreeen=ScheduleScreen();
                          Navigator.of(context).pushNamed( ScheduleScreen.routeName);
                          currentTab = 1;

                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImage.getPath("calender_icon"),
                            color: currentTab== 1? Colors.blue: Colors.grey,),
                          Text('Calender',
                            style: TextStyle(
                              fontSize: 16,
                              color: currentTab== 1? Colors.blue: Colors.grey,),
                          )
                        ],
                      ),


                    ),
                  ],

                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          Navigator.of(context).pushNamed( MessageScreen.routeName);
                          // CurrentScreeen=MessageScreen();
                          currentTab = 2;

                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImage.getPath("message_icon"),
                            color: currentTab== 2? Colors.blue: Colors.grey,),
                          Text('Message',
                            style: TextStyle(
                              fontSize: 16,
                              color: currentTab== 2? Colors.blue: Colors.grey,),
                          )
                        ],
                      ),


                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          Navigator.of(context).pushNamed( ProfileScreen.routeName);
                          currentTab = 3;

                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                            color: currentTab== 3? Colors.blue: Colors.grey,
                          ),
                          Text('Profile',

                            style: TextStyle(
                              fontSize: 16,
                              color: currentTab== 3? Colors.blue: Colors.grey,),
                            )
                        ],
                      ),


                    ),
                  ],

                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}

