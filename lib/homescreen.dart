import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paprclip/Summary.dart';
import 'package:paprclip/movingAvg.dart';
import 'package:paprclip/pivotpoint.dart';
import 'package:paprclip/technicalind.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.chevron_left,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Sensex',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  technical(),
                  SizedBox(
                    height: 20,
                  ),
                  Summary(),
                  SizedBox(
                    height: 20,
                  ),
                  MovingAvg(),
                  SizedBox(
                    height: 20,
                  ),
                  Technicalind(),
                   SizedBox(
                    height: 20,
                  ),
                  PivotPoint()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container technical() {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              'Technical',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 20,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
