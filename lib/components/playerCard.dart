import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  bool isVideo;
  PlayerCard({this.isVideo = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Color(0xFF1d1d1d),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: isVideo ? 80 : 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 7, left: 20),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Song Title',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 2, left: 6),
                                    child: Text(
                                      'Artist Name',
                                      style: TextStyle(color: Colors.grey),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 130),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ))),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 2,
              color: Colors.grey,
            )),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 2,
              color: Colors.white,
            )),
        Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              width: 13,
              height: 2,
              color: Colors.red,
            ))
      ],
    );
  }
}
