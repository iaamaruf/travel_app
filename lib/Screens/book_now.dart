import 'package:flutter/material.dart';
import 'package:travel_app/Common/Button/default_button.dart';
import 'package:travel_app/Utilities/image.dart';
import 'package:travel_app/Utilities/size_config.dart';

class BookNowScreen extends StatefulWidget {
  static const String routeName = "BookNowScreen";
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreeState();
}

class _BookNowScreeState extends State<BookNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:
            Image.asset(
              AppImage.getPath("BookingPage"),
              fit: BoxFit.fill,),
          ),

          Positioned(
              top: 50,
              left:20,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back_ios_new,
                            color: Colors.black,),
                        ),
                      )
                  ),
                  SizedBox(width: 100,),
                  const Text(
                    'View',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                  ),
                ],
              ),

          ),
          Positioned(
            top: 540,
              left: 43,

              child: Container(
               height: 198,
               width: 280,

                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20)

                ),
                child:   Container(
                  padding: EdgeInsets.all(12),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),

                      const Row(
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(fontSize:20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                          Spacer(),
                          Icon(Icons.star,color: Colors.yellow,),
                          SizedBox(width: 4,),
                          Text(
                            "4.7",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_sharp,color: Colors.white,),
                          Text(
                            'TekerGhat Sunamgange',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later_outlined, color: Colors.white,
                          size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '45 minutes',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.0),
                        child: DefaultButtonWithGradient(
                          paddingBottom: 12,
                          paddingTop: 12,
                          buttonText: "See on the Map",
                          onTap: (){
                            // Navigator.of(context).pushNamed(OnBoardThreeScreen.routeName);

                          },),
                      ),
                    ],
                  ),
                ),
           )

          ),
          Positioned(
            top: 140,
              left:170,


              child:Container(
                height: 70,
                width: 180,

                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)

                ),
                child:   Container(
                  padding: EdgeInsets.all(7),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 70,
                          width: 60,
                          decoration: BoxDecoration(
                          ),
                          child:Image.asset(
                            AppImage.getPath("LaHotel"),
                            fit: BoxFit.fill,)

                      ),
                      SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'La-Hotel',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                          SizedBox(height:2),
                          Text(
                            '2.09 mi',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              )
          ),
          Positioned(
              top: 380,
              left:70,


              child:Container(
                height: 70,
                width: 210,

                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)

                ),
                child:   Container(
                  padding: EdgeInsets.all(7),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 70,
                          width: 60,
                          decoration: BoxDecoration(
                          ),
                          child:Image.asset(
                            AppImage.getPath("LaHotel"),
                            fit: BoxFit.fill,)

                      ),
                      SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lemon Garden',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                          SizedBox(height:2),
                          Text(
                            '2.09 mi',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                color: Colors.white),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
