import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xffFA5959),
        title: const Center(
            child: Text(
          'Settings',
          style: TextStyle(fontSize: 28),
        )),
      ),
      body: Column(
        children: [
          Image.asset('images/Profilepic.png'),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 25.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    0, // Move to right 10  horizontally
                    15.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              children: [
                Row(children: const <Widget>[
                  Text(
                    'Janette Mullings, 21',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 90.0),
                    child: IconButton(onPressed: null, icon: Icon(Icons.edit)),
                  )
                ]),
                Row(children: const <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Color(0xffFA5959),
                    size: 30,
                  ),
                  Text(
                    'janetteM@gmail.com',
                    style: TextStyle(fontSize: 18),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                  child: ElevatedButton(
                    //color: Color(0xffFA5959),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFA5959),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Add emergency contact",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Biometric Information',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xffFA5959),
                      ),
                      Text(
                        'July 19, 2000',
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xffFA5959),
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Body Type:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Slim Built',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Hieght',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '165 cm',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Skin Complextion',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(onPressed: null, child: Text('Tap to view')),
                      Text(
                        'Eye Color',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(onPressed: null, child: Text('Tap to view'))
                    ],
                  )
                ]),
          ),
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Frequently Visited',
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.house_outlined),
                        Column(
                          children: [
                            Text('Blue Cafe'),
                            Text('5: 36 PM - 10:40 PM')
                          ],
                        ),
                        Text('Mon'),
                        Text('Tue'),
                        Text('Wed'),
                        Text('Fri'),
                        Text('Sat'),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
