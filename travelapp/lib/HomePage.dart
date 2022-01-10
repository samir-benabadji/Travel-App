import 'package:flutter/material.dart';
import 'place.dart';
import 'theme.dart';
import 'custom-tabbar.dart';
import 'event.dart';
import 'place-card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'All',
      'Asia',
      'America',
      'Europe',
      'Africa',
      'Australia'
    ];
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/user.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Micelle,',
                          style: textStyle2,
                        ),
                        Text(
                          'Good Morning,',
                          style: textStyle4.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Image(image: AssetImage('assets/cari.png'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, left: 30),
            child: Text(
              "Let’s enjoy your \nVocation",
              style: textStyle1,
            ),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(top: 25, left: 30),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Text(
                            titles[index],
                            style: textStyle4.copyWith(
                                color: (index == 0) ? mainCOlor : white),
                          ),
                          (index == 0)
                              ? Container(
                                  width: 20,
                                  height: 2,
                                  decoration: BoxDecoration(
                                      color: mainCOlor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                )
                              : SizedBox()
                        ],
                      ),
                    );
                  })),
          Container(
            margin: EdgeInsets.only(top: 36, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Countries",
                  style: textStyle2,
                ),
                Text(
                  "See All",
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            
            margin: EdgeInsets.only(left: 30, top: 20),
            height: 200,
            child: ListView.builder(
        
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: PlaceCard(
                      place: places[index],
                      index: index,
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongoing Events',
                  style: textStyle2,
                ),
                Text(
                  'See All',
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            height: 210,
            width: 230,
            margin: EdgeInsets.only(top: 40, right: 30, left: 30),
            child: ListView.builder(
                itemCount: events.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Event(events[index]),
                  );
                }),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
