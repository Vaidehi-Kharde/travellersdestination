import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

      int selectedIndex = 0;
      static const TextStyle optionStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, );
      List <Widget> widgetOptions = <Widget>[
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 150, top:50),
              child: Text("Top Picks for you..", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,),
              ),
            ),
            Row(
              children: [
                Image(image: AssetImage('/Images/img.png'))
              ],
            )
          ]
        ),
        const Text(
          'Page2',
          style: optionStyle,
        ),
        const Text(
          'page3',
          style: optionStyle,
        ),
      ];

      void _onItemTapped(int index) {
        setState(() {
          selectedIndex = index;
        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Hello _____",),
            backgroundColor: Colors.pinkAccent,
          ),
          backgroundColor: Colors.white70,
          body: Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: '2nd',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: '3rd',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        );
  }
}


