import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Flutter App Testing"),
          centerTitle: true,
          // actions: [
          //   Icon(Icons.account_circle),
          // ],
        ),
        body: Column(
          children: [
            Image.network(
                "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg"),
            IconButton(
                icon: Icon(Icons.add_box),
                onPressed: () {
                  print("Yoda");
                }),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.orange,
          onTap: (variableInt) {
            setState(() {
              index = variableInt;
            });
          },
          currentIndex: index,
          backgroundColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(
              title: Text('Account'),
              icon: Icon(Icons.account_circle),
            ),
            BottomNavigationBarItem(
              title: Text('Notification'),
              icon: Icon(Icons.add_alert),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
