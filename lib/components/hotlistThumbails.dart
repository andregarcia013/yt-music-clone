import 'package:flutter/material.dart';
import 'dart:math' as math;

class HotlistThumbnails extends StatelessWidget {
  int audioCount = 0;
  int currentItemType = 0;
  bool onlyVideos = false;
  ScrollController contoller;

  final setTopbar, control;
  ScrollController _controller = new ScrollController();
  HotlistThumbnails(
      {Key key, this.onlyVideos, @required this.setTopbar, this.control})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    audioCount = 0;
    currentItemType = 0;
    if (onlyVideos == null) {
      onlyVideos = false;
    }

    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: new NotificationListener(
          child: ListView(
            controller: _controller,
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Video Hotlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4, left: 3),
                      child: Text(
                        'New, cool and trending',
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SONG TITLE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Artist',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn.magdeleine.co/wp-content/uploads/2015/04/photo-1421809313281-48f03fa45e9f-1400x994.jpeg'),
                  fit: BoxFit.cover,
                )),
                child: Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SONG TITLE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Artist',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/6d/c8/7a/6dc87ad6f004abcdfee40c25299b9502.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SONG TITLE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Artist',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/d6/6d/54/d66d540c87e4c28a39941f1c5621ba9c.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SONG TITLE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Artist',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/66/5f/6b/665f6b023b406ff493c2174a7b659a44.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black,
                      offset: const Offset(0.0, 0.0),
                    ),
                    new CustomBoxShadow(
                        color: Colors.black,
                        offset: new Offset(5.0, 5.0),
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SONG TITLE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Artist',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              )
            ],
          ),
          onNotification: (t) {
            this.setTopbar(_controller.position.pixels, _controller);
            return true;
          },
        ));
  }
}

class CustomBoxShadow extends BoxShadow {
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(this.blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}
