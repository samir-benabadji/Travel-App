import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                top: 400,
              ),
              decoration: BoxDecoration(
                color: bgColor2,
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 160,
                    ),
                    Text(
                      'Description',
                      style: textStyle2,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      'Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing',
                      style: textStyle4,
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 310),
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 230,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: ListView(children: [
                SizedBox(
                  height: 110,
                ),
                Row(
                  children: [
                    Text(
                      "Bali ,",
                      style: textStyle1.copyWith(color: mainCOlor),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Indonesia",
                      style: textStyle1.copyWith(color: mainCOlor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Center(
                            child: Image.asset('assets/star.png'),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '4.92',
                          style: textStyle2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Center(
                            child: Image.asset('assets/awan.png'),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '27ºC',
                          style: textStyle2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Center(
                            child: Image.asset('assets/pesawat.png'),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '9 Jam',
                          style: textStyle2,
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ),
          SafeArea(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/nusa.jpg'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
          ),
          SafeArea(
              child: Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            // color: mainCOlor,
            child: Image.asset('assets/back.png'),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: bgColor,
              height: 68,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting From",
                        style: textStyle4,
                      ),
                      Text(
                        "500 - 750",
                        style: textStyle2.copyWith(color: mainCOlor),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: mainCOlor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: textStyle2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
