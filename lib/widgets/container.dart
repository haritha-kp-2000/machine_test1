import 'package:flutter/material.dart';

container1(TextEditingController name,name1) {
  return Container(
    height: 45,
    width: 190,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2)),
    child: Center(
      child: TextFormField(
        controller: name,
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter valid Value";
          }
          return null;
        },
        decoration: InputDecoration(border: InputBorder.none,labelText: name1),
      ),
    ),
  );
}