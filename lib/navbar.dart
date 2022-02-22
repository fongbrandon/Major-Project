import 'package:flutter/material.dart';
import 'package:help_wo/Settings.dart';

import 'Home.dart';
import 'Profile.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _currentindex = 0;
  final screens = [ home(),profile(), settings(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: screens[_currentindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap:(index)=> setState(()=> _currentindex=index),
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xffFA5959),
        iconSize: 30,
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: "Settings",
          ),

        ],
      ),
    );
  }
}
