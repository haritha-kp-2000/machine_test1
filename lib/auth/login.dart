import 'package:flutter/material.dart';
import 'package:machine_test1/auth/signup.dart';
import 'package:machine_test1/core/costant/Colors.dart';
import 'package:machine_test1/widgets/button.dart';
import 'package:machine_test1/widgets/text.dart';
TextEditingController emailcontroller=TextEditingController();
TextEditingController passwordcontroller=TextEditingController();
final formKey=GlobalKey<FormState>();
class Login extends StatefulWidget {
  const Login({super.key});
  
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Design.base,
      body: 
       SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                text(textname: 'Log In', textsize: 25),
                SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextFormField(
                    controller: emailcontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter valid Email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Email ID",
                      hintStyle: TextStyle(color: Design.text),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Design.text,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                //  container1(context, "Password", Icon( Icons.lock)),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextFormField(
                      controller: passwordcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter valid password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Design.text),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Design.text,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                toggles = !toggles;
                              });
                            },
                            icon: Icon(
                              toggles ? Icons.visibility : Icons.visibility_off,
                              color: Design.text,
                            )),
                        border: InputBorder.none,
                      ),
                      obscureText: !toggles),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text("Create a new account")),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                button(
                    text: "Log In",
                    buttonAction: () {
                      // SigninPage();
                      // login(context);
                      }    
                ),
              ],
            ),
          ),
        ),
      ),
      
             
    );
  }
  bool toggles = false;
  void toggle() {
    setState(() {
      toggles = !toggles;
    });
  }
}