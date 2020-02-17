import 'package:flutter/material.dart';

class Topbar extends StatefulWidget {
  double height;
  Topbar(this.height);

  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: widget.height,
      decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15)
            .add(EdgeInsets.only(top: 25, bottom: 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                'YT-Clone',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Color(0xFF8e8e8e),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 10),
                  child: CircleAvatar(
                    radius: 13,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
