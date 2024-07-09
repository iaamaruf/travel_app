import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home_screen.dart';
import 'package:travel_app/Screens/message.dart';
import 'package:travel_app/Screens/profile_screen.dart';
import 'package:travel_app/Screens/schedule_screen.dart';
import 'package:travel_app/Screens/serch_screen.dart';

class home extends StatefulWidget {
  static const String routeName = "home";
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
    return Scaffold(
      body: PageStorage(
        child: CurrentScreeen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: (){
          Navigator.of(context).pushNamed(SearchScreen.routeName);
          },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
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
                        Icon(Icons.home_filled,
                        color: currentTab== 0? Colors.blue: Colors.grey,
                        ),
                        Text('home')
                      ],
                    ),


                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreeen=ScheduleScreen();
                        currentTab = 1;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled,
                          color: currentTab== 1? Colors.blue: Colors.grey,
                        ),
                        Text('Calender')
                      ],
                    ),


                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreeen=MessageScreen();
                        currentTab = 2;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled,
                          color: currentTab== 2? Colors.blue: Colors.grey,
                        ),
                        Text('Message')
                      ],
                    ),


                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        CurrentScreeen=ProfileScreen();
                        currentTab = 3;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled,
                          color: currentTab== 3? Colors.blue: Colors.grey,
                        ),
                        Text('Profile')
                      ],
                    ),


                  ),
                ],

              ),
            ],
          ),
        ),

      ),

    );
  }
}
