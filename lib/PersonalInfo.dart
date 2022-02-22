import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'Biometric Information.dart';

class personalInfo extends StatefulWidget {
  const personalInfo({Key? key}) : super(key: key);

  @override
  _personalInfoState createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  final fname = TextEditingController();
  final email = TextEditingController();
  final lname = TextEditingController();
  final pnum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0,bottom: 10.0),
            child: Center(
                child: Text(
              'Please enter the following details,\n to build  your profile.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Image.asset('images/personalinfo.png'),
          const StepProgressIndicator(
            totalSteps: 4,
            currentStep: 1,
            selectedColor: Color(0xffFA5959),
            unselectedColor: Colors.grey,
          ),
          Text(
            'Step 1/4',
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Personal information',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Container(
                      width: 140,
                      child: TextField(
                          controller:fname,
                        decoration: InputDecoration(
                            labelText: 'First Name'
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 140.0,
                    child: TextField(
                        controller:lname,
                      decoration: InputDecoration(
                          labelText: 'Last Name'
                      ),
                    ),
                  )
                ],
              ),
              TextField(
                controller:email,
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
              ),
              TextField(
                controller:pnum,
                decoration: InputDecoration(
                    labelText: 'Phone Number', hintText: '1 876 123 4567'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: 300,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffFA5959),
                      ),
                      onPressed:() {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => const biomentric()
                          )
                        );
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
