import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  var rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8F00FF),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 36,top: 43),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,

                        ),
                        child: Center(
                          child: Icon(Icons.close,color: Colors.black,size: 20,),
                        )
                    ),
                    SizedBox(width:48 ,),
                    Text('Rate Your Trip',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 27,),
          Expanded(child: Container(
            padding: EdgeInsets.only(left: 36, top: 31,right: 36),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [

                     CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/logo.png',)
                      ),
                    SizedBox(width: 11,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ben Stokes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff080A24)
                          ),
                        ),
                        SizedBox(height: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded,color: Color(0xffFFCC00),),
                            SizedBox(width: 5,),
                            Text('4.9',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffC8C7CC)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                       SizedBox(width: 138,),
                       Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color: Color(0xff8F00FF),

                           ),
                           child: Center(
                             child: Icon(Icons.message,color: Color(0xffffffff),size: 20,),
                           )
                       ),
                  ],
                ),
                SizedBox(height: 28,),
                 Center(
                   child: Text(
                      'How is your trip?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff080A24)
                      ),
                    ),
                 ),
                SizedBox(height: 7,),
                Center(
                  child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 56,
                    unratedColor: Color(0xffF2F2F2),
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: 22,),
                Center(
                  child: Container(
                    width:303,
                    height: 82,
                    decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Color(0xffEDEDED)
                      )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write your feedback',
                          contentPadding: EdgeInsets.symmetric(horizontal:19.0,vertical:15),
                          isDense: true
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23,),
                Text('Trip Detail',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff080A24)
                  ),
                )
                
              ],
            ),
          ))
        ],
      )
    );
  }
}
