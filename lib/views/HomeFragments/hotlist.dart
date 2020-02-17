import 'package:flutter/material.dart';
import 'package:yt_music_clone/components/hotlistThumbails.dart';
import 'package:yt_music_clone/components/thumbnail.dart';

class HotlistFragment extends StatelessWidget {
  final setTopbar, control;
  HotlistFragment({this.setTopbar, this.control});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[]),
        HotlistThumbnails(
          setTopbar: this.setTopbar,
          control: this.control,
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
