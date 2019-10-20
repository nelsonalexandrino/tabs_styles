import 'package:flutter/material.dart';
import 'package:tabs_styles/tab_style_1.dart';
import 'package:tabs_styles/tab_style_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabs Style',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabStyle2(),
    );
  }
}
