import 'package:flutter/material.dart';

import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: Colors.red),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {SecondPage.tag: (context) => SecondPage()},
    );
  }
}
