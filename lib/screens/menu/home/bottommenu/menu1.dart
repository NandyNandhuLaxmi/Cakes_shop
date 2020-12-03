import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'sub_home.dart';
import 'offers.dart';
import 'profile.dart';


class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  static List<Widget> _screen = <Widget>[
    Sub_Home(), Offers(), Profile()
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.home, size: 30,),
            title: Text("Home", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.pricetags, size: 30),
            title: Text("Offers", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.person, size: 30),
            title: Text("Profile", style: TextStyle(fontWeight: FontWeight.w600)),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFF15B5D),
        onTap: _onItemTapped,
      ),
      
    );
  }
}

