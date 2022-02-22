import 'package:flutter/material.dart';
import 'package:help_wo/splashscreen.dart';

import 'Biometric Information.dart';
import 'Date.dart';
import 'PersonalInfo.dart';
import 'Profile.dart';
import 'Settings.dart';
import 'frequentvisit.dart';

class woman extends StatelessWidget {
  const woman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor:Color.fromRGBO(179, 187, 210, 10),
        scaffoldBackgroundColor: Colors.white,
      ),
      home:personalInfo(),
    );
  }
}
