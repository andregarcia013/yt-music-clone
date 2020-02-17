import 'package:flutter/material.dart';

class Thumbnails extends StatelessWidget {
  int audioCount = 0;
  int currentItemType = 0;
  bool onlyVideos = false;
  Thumbnails({Key key, this.onlyVideos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    audioCount = 0;
    currentItemType = 0;
    if (onlyVideos == null) {
      onlyVideos = false;
    }
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          this.audioCount++;
          if (audioCount % 3 == 0) {
            currentItemType = 1;
          } else if (audioCount % 5 == 0) {
            currentItemType = 2;
          } else {
            currentItemType = 0;
          }

          if (onlyVideos) {
            currentItemType = 1;
          }

          return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 15 : 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: currentItemType == 1 ? 200 : 120,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                            Radius.circular(currentItemType == 2 ? 100 : 5))),
                    child: Center(
                        child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, left: 5),
                    child: Text(
                      currentItemType == 2
                          ? 'Artist'
                          : currentItemType == 1 ? 'Video' : 'Audio',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 4),
                    child: Text(
                      'Subtitle',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}
