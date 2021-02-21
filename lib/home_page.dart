import 'package:flutter/material.dart';
import 'package:flutter_app_testing/second_page.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo,
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
              setState(() {
                numero = numero + 1;
              });
            },
          ),
          Text(numero.toString()),
          IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.tag,arguments: [numero]);
              })
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
       // backgroundColor: Colors.indigo,
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
    );
  }
}
