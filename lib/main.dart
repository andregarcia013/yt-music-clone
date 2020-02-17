import 'package:flutter/material.dart';
import 'package:yt_music_clone/views/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'YT-Sans'),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        });
  }
}
