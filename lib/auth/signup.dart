import 'package:flutter/material.dart';
import 'package:machine_test1/core/costant/Colors.dart';
import 'package:machine_test1/widgets/text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design.base,
      appBar: AppBar(backgroundColor: Design.base,),
      body: Column(
        children: [
          text(textname: "SignUp", textsize: 25),
          

        ],
      ),
      
      
    );
  }
}