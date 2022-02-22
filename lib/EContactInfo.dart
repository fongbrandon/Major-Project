import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class Econtact extends StatefulWidget {
  const Econtact({Key? key}) : super(key: key);

  @override
  _EcontactState createState() => _EcontactState();
}

class _EcontactState extends State<Econtact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
              child: Center(
                child: Text(
                    "Please enter your frequently,\nvisited locations to add to your profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Image.asset('images/freqvisit.png'),
            const StepProgressIndicator(
              totalSteps: 4,
              currentStep: 4,
              selectedColor: Color(0xffFA5959),
              unselectedColor: Colors.grey,
            ),
            const Text(
              'Step 3/4',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(children: <Widget>[
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Frequently Visited Information',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      )),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Persons name'),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Email Address'),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.number,
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Custom Message'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffFA5959),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Econtact()));
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                    ),
                  )
                ]),
              ),
            )
          ])),
    );
  }
}
