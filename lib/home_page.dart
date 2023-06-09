import 'package:flutter/material.dart';
import 'assets_page.dart'; // AssetsPage를 import 해줍니다.

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Text('Home Page'),
    AssetsPage(), // AssetsPage 위젯을 여기에 추가합니다.
    // ... 다른 페이지 위젯들을 이곳에 추가합니다.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Web App')),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Assets',
          ),
          // ... 다른 탭 아이템들을 이곳에 추가합니다.
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
