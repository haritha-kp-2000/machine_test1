import 'package:flutter/material.dart';
import 'package:machine_test1/auth/login.dart';
import 'package:machine_test1/core/costant/Colors.dart';
import 'package:machine_test1/widgets/button.dart';
import 'package:machine_test1/widgets/container.dart';
import 'package:machine_test1/widgets/text.dart';
TextEditingController namecontroller =TextEditingController();
TextEditingController placecontroller =TextEditingController();
TextEditingController fieldcontroller =TextEditingController();
TextEditingController mailcontroller =TextEditingController();
TextEditingController passwordcontroller=TextEditingController();
final formKey=GlobalKey<FormState>();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? _selectedExpertise;
  final List<String> _expertiseOptions = ['Flutter', 'MERN', 'UI/UX', 'Digital Marketing'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design.base,
      appBar: AppBar(backgroundColor: Design.base,),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                text(textname: "SignUp", textsize: 25),
                SizedBox(height: MediaQuery.of(context).size.height*0.06),
                container1(namecontroller, "Name"),
                SizedBox(height: MediaQuery.of(context).size.height*0.04),
                container1(placecontroller, "Place"),
                SizedBox(height: MediaQuery.of(context).size.height*0.04),
                // container1(fieldcontroller, "Field of Expertise"),
                Container(
                  height: 45,
                  width: 190,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2)),
                  child: DropdownButtonFormField<String>(
                    value: _selectedExpertise,
                    decoration: InputDecoration(labelText: 'Field of Expertise',border: InputBorder.none),
                    items: _expertiseOptions.map((String expertise) {
                      return DropdownMenuItem<String>(
                        value: expertise,
                        child: Text(expertise),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedExpertise = value;
                      });
                    },
                    validator: (value) => value == null ? 'Please select an expertise' : null,
                  ),
                ),

                container1(mailcontroller, "Email ID"),
                container1(passwordcontroller, "Password"),
                button(text: "Login",
                buttonAction: (){
            
                })
            
            
              ],
            ),
          ),
        ),
      ),
      
      
    );
  }
}