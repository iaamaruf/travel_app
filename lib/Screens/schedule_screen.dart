import 'package:flutter/material.dart';
import 'package:travel_app/Utilities/image.dart';

class ScheduleScreen extends StatefulWidget {
  static const String routeName = "ScheduleScreen";
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10, right: 10)),
            SizedBox(height: 10,),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.black,),
                    )
                ),
                SizedBox(width: 80,),
                const Text(
                  'Schedule',
                  style: TextStyle(
                      fontSize: 20,
                    fontFamily: 'Quicksand',
                      color: Colors.black,
                     ),
                ),

                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(35),

                  ),
                  child: Icon(Icons.notification_add),

                )
      
      
      
              ],
            ),
      
            const SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'My Schedule',
                    style: TextStyle(fontSize:20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Quicksand',
                        color: Colors.black),
                  ),
                  Spacer(),

                  InkWell(
                    onTap: (){

                    },
                    child: const Text(
                      'View All',
                      style: TextStyle(fontSize:18,
                        fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                        color:Colors.blue),
                    ),
                  ),
                ],
      
              ),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:[
      
      
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => event_details()),
                      // ),
      
                      child: Container(
                          height: 120,
                          width: double.infinity,
                          margin:EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration:
                          BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 80,
                                child: Image.asset(
                                  AppImage.getPath("Niladri"),
                                  fit: BoxFit.fill,),
                                decoration:
                                BoxDecoration(color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),),
      
      
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined,color: Colors.grey,
                                        size: 20,),
                                        SizedBox(width: 5,),
                                        Text('26 January, 2022', style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Quicksand',
                                            color: Colors.grey),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
      
                                    Row(
                                      children: [
                                        Text('Niladri Reservoir', style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w500,
                                            fontFamily: 'Quicksand',
                                            color: Colors.black),),
                                        SizedBox(width: 75,),
                                        Icon(Icons.arrow_forward_ios_rounded,
                                          size: 20,color: Colors.black,)
                                      ],
                                    ),
      
                                    SizedBox(height: 5),
      
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                        Text('Tekerghat, Sunamgange', style: TextStyle(
                                            fontSize: 15,fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',
                                            color: Colors.grey
                                        ),),
                                      ],
                                    ),
      
      
                                  ],
      
      
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => event_details()),
                      // ),
      
                      child: Container(
                          height: 120,
                          width: double.infinity,
                          margin:EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration:
                          BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 80,
                                child: Image.asset(
                                  AppImage.getPath("high rech"),
                                  fit: BoxFit.fill,),
                                decoration:
                                BoxDecoration(color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),),
      
      
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined,color: Colors.grey,
                                          size: 20,),
                                        SizedBox(width: 5,),
                                        Text('26 January, 2022', style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
      
                                    Row(
                                      children: [
                                        Text('Niladri Reservoir',
                                          style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w500,
                                            fontFamily: 'Quicksand',
                                            color: Colors.black),),
                                        SizedBox(width: 75,),
                                        Icon(Icons.arrow_forward_ios_rounded,
                                          size: 20,color: Colors.black,)
                                      ],
                                    ),
      
                                    SizedBox(height: 5),
      
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                        Text('Tekerghat, Sunamgange',
                                          style: TextStyle(
                                            fontSize: 15,fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',

                                            color: Colors.grey
                                        ),),
                                      ],
                                    ),
      
      
                                  ],
      
      
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => event_details()),
                      // ),
      
                      child: Container(
                          height: 120,
                          width: double.infinity,
                          margin:EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration:
                          BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 80,
                                child: Image.asset(
                                  AppImage.getPath("darma"),
                                  fit: BoxFit.fill,),
                                decoration:
                                BoxDecoration(color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),),
      
      
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined,color: Colors.grey,
                                          size: 20,),
                                        SizedBox(width: 5,),
                                        Text('26 January, 2022', style: TextStyle(
                                            fontSize: 16,fontFamily: 'Quicksand',
                                            color: Colors.grey),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
      
                                    Row(
                                      children: [
                                        Text('Niladri Reservoir', style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w500,
                                            fontFamily: 'Quicksand',
                                            color: Colors.black),),
                                        SizedBox(width: 75,),
                                        Icon(Icons.arrow_forward_ios_rounded,
                                          size: 20,color: Colors.black,)
                                      ],
                                    ),
      
                                    SizedBox(height: 5),
      
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                        Text('Tekerghat, Sunamgange', style: TextStyle(
                                            fontSize: 15,fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',
                                            color: Colors.grey
                                        ),),
                                      ],
                                    ),
      
      
                                  ],
      
      
                                ),
                              )
                            ],
                          )
                      ),
                    ),
      
                  ]
              ),
            ),
          ],
        ),

      
      ),
    );
  }
}
