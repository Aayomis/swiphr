import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _allUser = [
    {'first':'Toyota Camry', 'second':'2-3 person','third':'\$7,00',},
    {'first':'Lexus R700','second':'2-3 person' ,'third':'\$9,00',},
    {'first':'Mercedes W90', 'second':'2-3 person','third':'\$7,00',}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height-300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/wa.png'),fit: BoxFit.contain)
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(1.0),
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(0.2)

                      ]
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 36,top: 43),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff8F00FF)
                    ),
                    child: Icon(Icons.menu,color: Colors.white,)
                ),
                Container(
                  margin: EdgeInsets.only(top: 48),
                  height: 30,
                  width: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/logo.png'))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 38, top: 43),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/logo.png',)
                  ),
                )
              ],
            ),
                Container(
                  margin: EdgeInsets.only(left:42,top: 98,right: 42),
                  padding: EdgeInsets.only(left: 18,top: 14),
                  height: 83,
                  width: 302,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(1, 1),
                        blurRadius: 20,
                        
                ),]
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('images/circle.png')),
                              SizedBox(width: 13,),
                              Text('Stake Park',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff656565)
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.5,),
                          Container(
                            height: 1,
                            width: 200,
                            color: Color(0xffEDEDED)
                          ),
                          SizedBox(height: 8.5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_pin,color: Colors.red,size: 20,),
                              SizedBox(width: 11,),
                              Text('Home',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff656565)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            height: 36,
                            width: 68,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffFAFAFA),
                              border: Border.all(
                                color: Color(0xffEDEDED),
                                width: 2.0,)
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.add_circle,color: Color(0xffCACACA),size: 20,),
                            SizedBox(width: 5,),
                            Text('Add',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff656565)
                              ),
                            )
                          ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
            Container(
              margin: EdgeInsets.only(top: 476),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),

                    ),]
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 64,
                        child: Row(
                          children: [
                            Text('Choose your ride',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff080A24)
                              ),
                            ),
                            SizedBox(width: 118,),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFd8dbe0),
                                      offset: Offset(1, 2),
                                      blurRadius: 10,

                                    ),]
                              ),
                              child: Center(
                                child: Icon(Icons.navigate_before,color: Colors.black,size: 35,),
                              )
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width ,
                        height: 64,
                        padding: EdgeInsets.only(left: 36,right: 18),
                        decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          border: Border.all(
                            color: Color(0xffEDEDED)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 13,),
                                Text('Toyota Camry',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000)
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('2-3 person',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff656565)
                                  ),
                                )
                              ],
                            ),
                            Text("\$7,00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width ,
                        height: 64,
                        padding: EdgeInsets.only(left: 36,right: 18),
                        decoration: BoxDecoration(
                            color: Color(0xff8F00FF),
                            border: Border.all(
                                color: Color(0xffEDEDED)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 13,),
                                Text('Lexus R700',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffffffff)
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('2-3 person',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffffffff)
                                  ),
                                )
                              ],
                            ),
                            Text("\$9,00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff)
                              ),
                            )
                          ],
                        )
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width ,
                        height: 64,
                        padding: EdgeInsets.only(left: 36,right: 18),
                        decoration: BoxDecoration(
                            color: Color(0xffFAFAFA),
                            border: Border.all(
                                color: Color(0xffEDEDED)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 13,),
                                Text('Mercedes W90',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000)
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('2-3 person',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff656565)
                                  ),
                                )
                              ],
                            ),
                            Text("\$10,00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)
                              ),
                            )
                          ],
                        ),
                      ),
                     
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 277,
                left: 120.5,
                child: Image(image: AssetImage('images/line.png'))
            ),
            Positioned(
              top: 432,
                left: 106,
                child:
                    Image(image: AssetImage('images/cy2.png'))
            ),
            Positioned(
                top: 410,
                left: 98,
                child:
                Icon(Icons.location_pin,color: Color(0xff7200CC),size: 36,)
            ),
            Positioned(
              left: 340,
                top: 260,
                child:
                Image(image: AssetImage('images/cycle.png'))
            ),
            Positioned(
                top: 238,
                left: 332,
                child:
                Icon(Icons.location_pin,color: Color(0xffF52D56),size: 36,)
            ),
            Positioned(
              top: 700,
                child: Container(
                  padding: EdgeInsets.only(left: 36,top: 14,right: 36),
              height: MediaQuery.of(context).size.height-662,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 2),
                      blurRadius: 10,

                    ),]
              ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Cash',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                          SizedBox(width: 131,),
                          Container(
                            height: 36,
                            width: 119,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffFAFAFA),
                              border: Border.all(
                                color: Color(0xffEDEDED)
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.percent_outlined,color: Color(0xff000000),size: 20,),
                                SizedBox(width: 6,),
                                Text('Promo code',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff656565)
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 29),
                        height: 64,
                        width: 303,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff000000)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Book this car',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xffffffff)
                              ),
                            ),
                            SizedBox(width: 52,),
                            Text("\$9,00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff)
                              ),
                            ),
                            SizedBox(width: 14,),
                            Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,

                                ),
                                child: Center(
                                  child: Icon(Icons.navigate_next,color: Colors.black,size: 35,),
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
            ))
          ],
        ),
      )
    );
  }
}
