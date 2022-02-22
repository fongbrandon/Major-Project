import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_wo/functions.dart';

//import 'package:location/location.dart';

import 'Profile.dart';
import 'Settings.dart';

class home extends StatelessWidget {
  //const home({Key? key}) : super(key: key);
  int _currentindex = 0;
  final screens = [ home(),profile(), settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Column(children: [
                    space(25),
                    Row(
                      children: [
                        Icon(Icons.person),
                        Text(
                          'Janette Mullings',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Center(
                      child: Stack(children: [
                        IconButton(
                          onPressed: null,
                          icon: Image.asset('images/Group 1.png'),
                          iconSize: 220,
                        ),
                        Positioned(
                            left: 25.0,
                            bottom: 2.0,
                            child: Text(
                              'Tap in case of emergecy',
                              style: TextStyle(fontSize: 16),
                            ))
                      ]),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.location_on,
                            color: Color(0xffFA5959),
                          ),
                        ),
                        Text(
                          '18.0183, -76.7435',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.camera_alt_rounded)),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Image.asset('images/Vector.png'),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4.0),
                                      child: Image.asset(
                                        'images/Ellipse 5.png',
                                        height: 50.0,
                                        width: 40.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        'Kay-Ann Ricks',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4.0),
                                      child: Image.asset(
                                        'images/Ellipse 5.png',
                                        height: 50.0,
                                        width: 40.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        'Kay-Ann Ricks',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  space(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Emergency Contact List',
                                style: TextStyle(
                                    fontSize: 17.0, color: Color(0xff888888)),
                              ),
                            ),
                            space(10),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          width: 1.0, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 2.0, color: Colors.grey))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Richard Donisons',
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const <Widget>[
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(Icons.phone)),
                                        IconButton(
                                          onPressed: null,
                                          icon: Icon(Icons.mail,
                                              color: Color(0xffFA5959)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    //top: BorderSide(width: 2.0, color: Colors.grey),
                                    bottom: BorderSide(
                                        width: 2.0, color: Colors.grey)),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Carlenne Donisons',
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const <Widget>[
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(Icons.phone)),
                                        IconButton(
                                          onPressed: null,
                                          icon: Icon(Icons.mail,
                                              color: Color(0xffFA5959)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      //top: BorderSide(width: 2.0, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 2.0, color: Colors.grey))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Veronica Campbell',
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const <Widget>[
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(Icons.phone)),
                                        IconButton(
                                          onPressed: null,
                                          icon: Icon(Icons.mail,
                                              color: Color(0xffFA5959)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      //top: BorderSide(width: 2.0, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 2.0, color: Colors.grey))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Walters Dickson',
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const <Widget>[
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(Icons.phone)),
                                        IconButton(
                                          onPressed: null,
                                          icon: Icon(Icons.mail,
                                              color: Color(0xffFA5959)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color(0xffFA5959)),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xffFA5959)),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color(0xffFA5959)),
              label: "Settings",

            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
        ));
  }
}
/*
Future<LocationData> location() async {
  //Location location = new Location();
  var location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          _locationData = await location.getLocation();
          return _locationData;
        }
      }
    }
  }else{

    /*AlertDialog(
      title:Text('you cannot send location'),
      actions: <Widget>[
        TextButton(
          child: const Text('Approve'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );*/
  }
}
*/
