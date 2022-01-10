import 'package:flutter/material.dart';
import 'theme.dart';

class Customtabbar extends StatelessWidget {
  final List<String> titles;
  Customtabbar({this.titles});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: titles
          .map((e) => Padding(
                padding: EdgeInsets.only(right: 30),
                child: Container(
                  height: 30,
                  width: 50,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text(
                        e,
                        style: textStyle4,
                      ),
                      Container(
                        width: 20,
                        height: 2,
                        decoration: BoxDecoration(
                            color: mainCOlor,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      )
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
