import 'package:flutter/material.dart';
import 'package:machine_test1/core/costant/Colors.dart';
import 'package:machine_test1/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design.base,
      appBar: AppBar(backgroundColor: Design.base,
        title: text(textname: "Student Name", textsize: 20),
      ),
      body: Column(
        children: [
          Container(
            // child: ListView.builder(itemBuilder: itemBuilder),
          )
        ],
      ),

    );
  }
}