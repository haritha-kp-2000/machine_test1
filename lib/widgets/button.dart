import 'package:flutter/material.dart';
import 'package:machine_test1/core/costant/Colors.dart';

button({required String text,
  void Function()?buttonAction}){
  return ElevatedButton(onPressed: buttonAction,
   child:Text(text,style: TextStyle(color: Design.text),),
  style: ElevatedButton.styleFrom(backgroundColor: Design.button),);
}