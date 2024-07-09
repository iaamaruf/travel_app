import 'package:flutter/material.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
import 'package:travel_app/Utilities/image.dart';
class SearchScreen extends StatefulWidget {
  static const String routeName = "SearchScreen";
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController search = TextEditingController();

  TextEditingController _searchController = TextEditingController();
  List<Destination> _destinations = [
    Destination('Niladri Reservoir', InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav1"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Niladri Reservoir', style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand',
                            color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange', style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.grey
                        ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ),),
    Destination('Casa las Tirtugas',InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav2"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Casa las Tirtugas', style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.w500,
                            fontFamily: 'Quicksand',
                            color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange', style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.grey
                        ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ), ),
    Destination('Aonang vila resort', InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav3"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Aonang vila resort',
                          style: TextStyle(
                              fontSize: 17,fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand',
                              color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange',
                          style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Colors.grey
                          ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ),),
    Destination('Ranhauti resort', InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav4"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Ranhauti resort',
                          style: TextStyle(
                              fontSize: 17,fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand',
                              color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange',
                          style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',

                              color: Colors.grey
                          ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ),),
    Destination('Kachura resort', InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav5"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Kachura resort',
                          style: TextStyle(
                              fontSize: 17,fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand',
                              color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange',
                          style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Colors.grey
                          ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ),),
    Destination('Sakardu resort',InkWell(

      child: Container(
          height: 220,
          width: 165,
          padding: EdgeInsets.all(4),
          decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200.withOpacity(0.3),
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 165,
                child: Image.asset(
                  AppImage.getPath("fav6"),
                  fit: BoxFit.fill,),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),),


              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5),

                    Row(
                      children: [
                        Text('Sakardu resort',
                          style: TextStyle(
                              fontSize: 17,fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand',
                              color: Colors.black),),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                        Text('Tekerghat, Sunamgange',
                          style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Colors.grey
                          ),),
                      ],
                    )


                  ],


                ),
              )
            ],
          )
      ),
    ), ),



    // Add more destinations as needed
  ];
  List<Destination> _filteredDestinations = [];

  @override
  void initState() {
    super.initState();
    _filteredDestinations.addAll(_destinations);
  }

  void _filterDestinations(String searchText) {
    setState(() {
      _filteredDestinations = _destinations
          .where((destination) => destination.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  'Search',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: LoginCustomInputField(
                controller: _searchController,
                hintText: "Search",
                prefixIcon: Icon(Icons.search,size: 25,),
                suffixWidget: Icon(Icons.mic, size: 28,),
                // onChanged: (value) {
                //   _filterDestinations(value);
                // },
              ),

            ),

            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Search Places',
                    style: TextStyle(fontSize:20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Quicksand',
                        color: Colors.black),
                  ),
                ],

              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[

                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav1"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Niladri Reservoir', style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                    fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange', style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                    fontFamily: 'Quicksand',
                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Spacer(),
                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav2"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Casa las Tirtugas', style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                    fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange', style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                    fontFamily: 'Quicksand',
                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[

                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav3"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Aonang vila resort',
                                                  style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                    fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange',
                                                  style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Spacer(),
                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav4"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Ranhauti resort',
                                                  style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange',
                                                  style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                      fontFamily: 'Quicksand',

                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[

                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav5"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Kachura resort',
                                                  style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange',
                                                  style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            Spacer(),
                            InkWell(

                              child: Container(
                                  height: 220,
                                  width: 165,
                                  padding: EdgeInsets.all(4),
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200.withOpacity(0.3),
                                        spreadRadius: 5,
                                        offset: Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 165,
                                        child: Image.asset(
                                          AppImage.getPath("fav6"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height:5),

                                            Row(
                                              children: [
                                                Text('Sakardu resort',
                                                  style: TextStyle(
                                                    fontSize: 17,fontWeight: FontWeight.w500,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.black),),
                                              ],
                                            ),

                                            SizedBox(height: 2),

                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 20,color: Colors.grey,),
                                                Text('Tekerghat, Sunamgange',
                                                  style: TextStyle(
                                                    fontSize: 10,fontWeight: FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                    color: Colors.grey
                                                ),),
                                              ],
                                            )


                                          ],


                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ]
                      ),

                    ],
                  ),
                ),

              ),
            )
          ],
        ),


      ),
    );
  }
}

class Destination {
  final String name;
  final Widget widget;

  Destination(this.name, this.widget);
}