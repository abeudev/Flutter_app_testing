import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      ),
      home: Hamberger(),
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deviver Me"),
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
            ],
          ),
          Header(),
          SliverList(
              delegate: SliverChildListDelegate([
            Text(
              "Hamberger",
              style: TextStyle(fontSize: 300),
            )
          ]))
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                    icon: Icon(Icons.add_alert),
                    color: Colors.white,
                    onPressed: () {}),
                Spacer(),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.turned_in),
                    color: Colors.white,
                    onPressed: () {}),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
