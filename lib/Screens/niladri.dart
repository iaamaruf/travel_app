import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Screens/book_now.dart';
import 'package:travel_app/Utilities/image.dart';
class NiladriReservoirScreen extends StatefulWidget {
  static const String routeName = "NiladriReservoirScreen";
  const NiladriReservoirScreen({super.key});

  @override
  State<NiladriReservoirScreen> createState() => _NiladriReservoirScreenState();
}

class _NiladriReservoirScreenState extends State<NiladriReservoirScreen> {

  bool isExpanded= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height/2.2,
              width: MediaQuery.of(context).size.width,
              child:Image.asset(
                AppImage.getPath("Niladri"),
                fit: BoxFit.fill,)
          ),
           Expanded(
            child:  SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Column(

                  children: [

                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),

                            Text(
                              'Niladri Reservoir',
                              style: TextStyle(fontSize:22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Quicksand',
                                  color: Colors.black),
                            ),
                            SizedBox(height:1),
                            Row(
                              children: [
                                Text(
                                  'TekerGhat Sunamgange',
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
                        Spacer(),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child:Image.asset(
                              AppImage.getPath("personImage"),
                              fit: BoxFit.fill,)

                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    const Row(
                      children: [
                        Icon(Icons.location_on_sharp,color: Colors.grey,),
                        SizedBox(width: 4,),
                        Text(
                          "Tekerghat",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,


                          ),
                        ),
                        Spacer(),

                        Icon(Icons.star,color: Colors.yellow,),
                        SizedBox(width: 4,),
                        Row(
                          children: [
                            Text(
                              "4.7",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Text(
                              "(2498)",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Quicksand',
                                  color: Colors.grey
                              ),
                            ),
                          ],
                        ),


                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "59/",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Text(
                              "person",
                              style: TextStyle(
                                fontSize: 16,
                                  fontFamily: 'Quicksand',
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Image.asset(
                                AppImage.getPath("DestinationIcon1"),
                                fit: BoxFit.fill,)
                          ),
                          Spacer(),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Image.asset(
                                AppImage.getPath("DestinationIcon2"),
                                fit: BoxFit.fill,)
                          ),
                          Spacer(),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Image.asset(
                                AppImage.getPath("DestinationIcon3"),
                                fit: BoxFit.fill,)
                          ),
                          Spacer(),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Image.asset(
                                AppImage.getPath("DestinationIcon4"),
                                fit: BoxFit.fill,)
                          ),
                          Spacer(),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Image.asset(
                                AppImage.getPath("DestinationIcon5"),
                                fit: BoxFit.fill,)
                          ),



                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About Destination",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        ExpansionTile(
                          initiallyExpanded: false,
                          trailing: SizedBox.shrink(),
                          title: Text(
                            "You will get a complete travel package on the beaches. "
                                "Packages in the form of airline tickets, "
                                "recommended Hotel rooms, Transportation,"
                                " Have you ever been on holiday to the Greek ETC",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Quicksand',
                            ),
                            maxLines: isExpanded ? null : 3,
                            // overflow: TextOverflow.ellipsis,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isExpanded = !isExpanded;
                                    });
                                  },
                                  child: Text(
                                    isExpanded ? 'Read Less' : 'Read More',
                                    style: const TextStyle(
                                      color: Colors.orange,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: DefaultButtonWithGradient(
              paddingBottom: 13,
              paddingTop: 13,
              buttonText: "Book Now",
              onTap: (){
                Navigator.of(context).pushNamed(BookNowScreen.routeName);

              },),
          ),

        ],
      ),
    );
  }
}
