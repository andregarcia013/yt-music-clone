import 'package:flutter/material.dart';
import 'package:yt_music_clone/components/thumbnail.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            child: Text(
              'Your favorites',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
          )
        ]),
        Thumbnails(),
        Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'LISTEN AGAIN',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      'From your history',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    )
                  ],
                ),
              )
            ])),
        Thumbnails(),
        Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Recommend Music Videos',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    )
                  ],
                ),
              )
            ])),
        Thumbnails(
          onlyVideos: true,
        ),
        Padding(
            padding: EdgeInsets.only(top: 15),
            child: InkWell(
              hoverColor: Colors.white,
              child: Row(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 15),
                  child: CircleAvatar(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(
                          'SIMILAR TO',
                          style: TextStyle(
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                      Text(
                        'Artist',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      )
                    ],
                  ),
                )
              ]),
            )),
        Thumbnails(
          onlyVideos: false,
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
