import 'package:flutter/material.dart';
import 'place.dart';
import 'theme.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final int index;
  PlaceCard({ this.place,  this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 120,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(place.imageUrl), fit: BoxFit.cover)),
              ),
              (index == 0)
                  ? Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: mainCOlor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Center(
                          child: Image.asset('assets/start.png'),
                        ),
                      ))
                  : SizedBox()
            ],
          ),
          Container(
            width: 120,
            height: 50,
            decoration: BoxDecoration(
              color: mainCOlor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                place.city,
                style: textStyle3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
