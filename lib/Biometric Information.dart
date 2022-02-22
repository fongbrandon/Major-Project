import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:help_wo/functions.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'frequentvisit.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class biomentric extends StatefulWidget {
  const biomentric({Key? key}) : super(key: key);

  @override
  _biomentricState createState() => _biomentricState();
}

class _biomentricState extends State<biomentric> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 25.0,bottom: 10.0),
              child: Center(
                  child: Text(
                'Please enter your biometric, \ninformation to add to your profile.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
            Image.asset('images/Biometric_Information.png'),
            const StepProgressIndicator(
              totalSteps: 4,
              currentStep: 2,
              selectedColor: Color(0xffFA5959),
              unselectedColor: Colors.grey,
            ),
            const Text(
              'Step 2/4',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Biometric information',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    space(10),
                    Text(
                      'Height (cm)',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 140,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Feet',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        hspace(40),
                        Container(
                          width: 140,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Inches',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Birthday',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.calendar_today_outlined))
                      ],
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Body Type',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text('Skin Complexion'),flex: 1,
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.camera_alt_sharp),
                            alignment: Alignment.centerRight,
                          ),flex:1,
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text('Eye Color'),
                        ),
                        Expanded(
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.camera_alt_sharp),
                                alignment: Alignment.centerRight)
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width: 300,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xffFA5959),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const freqVisit()));
                            },
                            child: const Text(
                              'Continue',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*
class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex())
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex());
  }
}*/
