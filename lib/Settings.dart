import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_wo/functions.dart';

class settings extends StatefulWidget {
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  //const settings({Key? key}) : super(key: key);
  bool _clocation =false;
  bool _mapview =false;
  bool _ecamera =false;
  bool _secaudio =false;
  bool _checkup =false;
  bool _info =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xffFA5959),
        title: Center(child: Text('Settings',style: TextStyle(fontSize: 28),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration:
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      //border: Border.all(color: Colors.black,width: 5)
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Location',
                          style: TextStyle(fontSize: 25, color: Colors.grey)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.5, color: Colors.grey),
                          bottom: BorderSide(width: 1.5, color: Colors.grey),
                        )
                      ),
                      child: SwitchListTile(
                        title: const Text('Allow use of your current location',style: TextStyle(fontSize: 18),),
                        value: _clocation,
                        activeColor: const Color(0xffFA5959),
                        onChanged: (bool value) {
                          setState(() {
                            _clocation = value;
                          });
                        },
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Enable Map view',style: TextStyle(fontSize: 18),),
                      value: _mapview,
                      activeColor: const Color(0xffFA5959),
                      onChanged: (bool value) {
                        setState(() {
                          _mapview = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //border: Border.all(color: Colors.black,width: 5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Camera & Microphone',
                          style: TextStyle(fontSize: 25, color: Colors.grey)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.5, color: Colors.grey),
                            bottom: BorderSide(width: 1.5, color: Colors.grey),
                          )
                      ),
                      child: SwitchListTile(
                        title: const Text('Enable use of camera in case of emergency',style: TextStyle(fontSize: 18),),
                        value: _ecamera,
                        activeColor: const Color(0xffFA5959),
                        onChanged: (bool value) {
                          setState(() {
                            _ecamera = value;
                          });
                        },
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Allow 30 second audio recording',style: TextStyle(fontSize: 18),),
                      value: _secaudio,
                      activeColor: const Color(0xffFA5959),
                      onChanged: (bool value) {
                        setState(() {
                          _secaudio = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //border: Border.all(color: Colors.black,width: 5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('System',
                          style: TextStyle(fontSize: 25, color: Colors.grey)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.5, color: Colors.grey),
                            bottom: BorderSide(width: 1.5, color: Colors.grey),
                          )
                      ),
                      child: SwitchListTile(
                        title: const Text('Enable check-ups',style: TextStyle(fontSize: 18),),
                        value: _checkup,
                        activeColor: const Color(0xffFA5959),
                        onChanged: (bool value) {
                          setState(() {
                            _checkup = value;
                          });
                        },
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Send information to nearby users',style: TextStyle(fontSize: 18),),
                      value: _info,
                      activeColor: const Color(0xffFA5959),
                      onChanged: (bool value) {
                        setState(() {
                          _info = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0,bottom: 20.0),
              child: Container(
                width: 350,
                height: 100,
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //border: Border.all(color: Colors.black,width: 5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Get Help',
                          style: TextStyle(fontSize: 25, color: Colors.grey)),
                    ),
                    Container(
                        width: 350,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.5, color: Colors.grey),
                            //bottom: BorderSide(width: 1.5, color: Colors.grey),
                          )
                      ),
                      child: Text('Contact Us',style: TextStyle(fontSize: 20),)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
