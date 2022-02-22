import 'package:flutter/material.dart';
space(double amount)///Custom Function that takes parameter to add vertical space where needed
{
  return Container(
    child: SizedBox(
      height:amount,
    ),
  );
}
hspace(double amount){
  return Container(
    width:amount,
  );
}