import 'package:flutter/material.dart';
import 'package:flutter_xculture/pages/commu_page.dart';
import 'package:flutter_xculture/pages/event_page.dart';
import 'package:flutter_xculture/pages/forum/home_page.dart';
import 'package:flutter_xculture/pages/menu_page.dart';
import 'package:flutter_xculture/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    EventPage(),
    SearchPage(),
    HomePage(),
    CommuPage(),
    MenuPage()
  ];
  int currentIndex = 2;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.yellow[700],
        unselectedItemColor: Colors.grey.withOpacity(0.4),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title: Text("Event"), icon: Icon(Icons.room)),
          BottomNavigationBarItem(title: Text("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Community"), icon: Icon(Icons.groups)),
          BottomNavigationBarItem(title: Text("Menu"), icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}