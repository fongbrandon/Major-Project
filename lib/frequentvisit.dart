import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'functions.dart';
import 'EContactInfo.dart';

class freqVisit extends StatefulWidget {
  const freqVisit({Key? key}) : super(key: key);

  @override
  _freqVisitState createState() => _freqVisitState();
}

class _freqVisitState extends State<freqVisit> {
  @override
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }
  bool mon=false;
  bool tue=false;
  bool wed=false;
  bool thurs=false;
  bool fri=false;
  bool sat=false;
  bool sun=false;
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
          currentStep: 3,
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
                  ),),
            space(10),
              Align(
                alignment: Alignment.centerLeft,
              child:
              Text('Name of Places',
                style: TextStyle(
                  fontSize: 18
              ),),),
            space(5),
            Align(
                alignment: Alignment.centerLeft,
                child:Text('Visiting Time',
                style: TextStyle(
                    fontSize: 18
                ),),),
              Row(
                children:<Widget>[
                  ElevatedButton(
                    onPressed: _selectTime,
                    child: Text('SELECT TIME'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFA5959)
                    ),
                  ),
                  hspace(10),
                  SizedBox(height: 8),
                  Text(
                    'Selected time: ${_time.format(context)}',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ]
              ),
              space(5),
              Align(
                alignment: Alignment.centerLeft,
                child:Text('Leaving Time',
                  style: TextStyle(
                      fontSize: 18
                  ),),),
              Row(
                  children:<Widget>[
                    ElevatedButton(
                      onPressed: _selectTime,
                      child: Text('SELECT TIME'),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFA5959)
                      ),
                    ),
                    hspace(10),
                    SizedBox(height: 8),
                    Text(
                      'Selected time: ${_time.format(context)}',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ]
              ),
              space(10),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Mon',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.mon,
                    onChanged: (mon) {
                      setState(() {
                        this.mon = mon!;
                      });
                    },
                  ),
                  Text(
                    'Tue',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.tue,
                    onChanged: (tue) {
                      setState(() {
                        this.tue = tue!;
                      });
                    },
                  ),
                  Text(
                    'Wed',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.wed,
                    onChanged: (wed) {
                      setState(() {
                        this.wed = wed!;
                      });
                    },
                  ),
                  Text(
                    'Thurs',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.thurs,
                    onChanged: (thurs) {
                      setState(() {
                        this.thurs = thurs!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  hspace(10),
                  Text(
                    'Fri',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.fri,
                    onChanged: (fri) {
                      setState(() {
                        this.fri = fri!;
                      });
                    },
                  ),
                  hspace(15),
                  Text(
                    'Sat',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.sat,
                    onChanged: (sat) {
                      setState(() {
                        this.sat = sat!;
                      });
                    },
                  ),
                  Text(
                    'Sun',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.sun,
                    onChanged: (sun) {
                      setState(() {
                        this.sun = sun!;
                      });
                    },
                  ),
                ],
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
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    toggleableActiveColor: shrinePink400,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: shrinePink100,
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
    caption: base.caption?.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
    button: base.button?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: shrineBrown900,
    bodyColor: shrineBrown900,
  );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink400,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
