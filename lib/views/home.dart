import 'package:flutter/material.dart';
import 'package:yt_music_clone/components/playerCard.dart';
import 'package:yt_music_clone/components/thumbnail.dart';
import 'package:yt_music_clone/components/timerCounter.dart';
import 'package:yt_music_clone/components/topbar.dart';
import 'package:yt_music_clone/views/HomeFragments/home.dart';
import 'package:yt_music_clone/views/HomeFragments/hotlist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  final ScrollController _control = ScrollController();

  double currentScroll = 0.0, deltaScroll = 0.0, topBarHeight = 100;
  int currentIndex = 1;
  int audioCount = 0;
  int currentItemType = 0;

  setTopBarStatus(double scrolled, ScrollController _controller) {
    if (scrolled > 0) {
      if (scrolled > currentScroll) {
        if (scrolled > 0) {
          deltaScroll = scrolled - currentScroll;
          if (topBarHeight > 10) {
            topBarHeight -= deltaScroll;
            setState(() {
              if (topBarHeight - deltaScroll > 3) {
                topBarHeight -= deltaScroll;
              } else {
                topBarHeight = 0;
              }
            });
          }
        }
      } else {
        if (scrolled < 70) {
          setState(() {
            topBarHeight = 70;
          });
        } else {
          if (scrolled < _controller.position.maxScrollExtent) {
            if (topBarHeight < 70) {
              setState(() {
                topBarHeight += deltaScroll + 10;
              });
            }
          }
        }
      }
      currentScroll = scrolled;
    }
  }

  void _onItemTapped(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          currentIndex = index;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1D1D1D),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: (currentIndex == 0) ? Colors.white : Color(0xFF8e8e8e),
              ),
              title: Text('Home',
                  style: TextStyle(
                      color: (currentIndex == 0)
                          ? Colors.white
                          : Color(0xFF8e8e8e))),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flare,
                  color:
                      (currentIndex == 1) ? Colors.white : Color(0xFF8e8e8e)),
              title: Text('Hotlist',
                  style: TextStyle(
                      color: (currentIndex == 1)
                          ? Colors.white
                          : Color(0xFF8e8e8e))),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music,
                  color:
                      (currentIndex == 2) ? Colors.white : Color(0xFF8e8e8e)),
              title: Text(
                'Library',
                style: TextStyle(
                    color:
                        (currentIndex == 2) ? Colors.white : Color(0xFF8e8e8e)),
              ),
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Topbar(topBarHeight),
                Expanded(
                    flex: 8,
                    child: Container(
                        decoration: BoxDecoration(color: Color(0xFF080808)),
                        child: new NotificationListener(
                          child: new ListView(
                            controller: _controller,
                            children: <Widget>[
                              currentIndex == 0
                                  ? HomeFragment()
                                  : HotlistFragment(
                                      setTopbar: setTopBarStatus,
                                      control: this._control,
                                    )
                            ],
                          ),
                          onNotification: (t) {
                            setTopBarStatus(
                                _controller.position.pixels, _controller);
                            return true;
                          },
                        )))
              ],
            ),
            PlayerCard(
              isVideo: false,
            ),
          ],
        ));
  }
}
