// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class ParkCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isOdd;

  ParkCard(
      this.title,
      this.subtitle,
      this.isOdd,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 280,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 5,
            right: !isOdd ? 20 : 0,
            left: !isOdd ? 0 : 20,
            // ignore: unnecessary_new
            child: new Container(
                width: 351,
                height: 62,
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.deepPurple.shade700,
                      Colors.deepPurple.shade50 ],
                        stops: [
                          0,
                          1
                        ]
                    )
                )
            ),
          ),

          isOdd ?
              Positioned(
                left: 60,
                right: 0,
                bottom: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(title,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        )
                    ),
                    new Text(subtitle,
                        style: TextStyle(
                          fontFamily: 'AlegreyaSansSC',
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 0,
                        )
                    )

                  ],
                ),
              )
          :
            Positioned(
              bottom: 20,
              right: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(title,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      )
                  ),
                  new Text(subtitle,
                      style: TextStyle(
                        fontFamily: 'AlegreyaSansSC',
                        color: Color(0xffffffff),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 0,
                      )
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}