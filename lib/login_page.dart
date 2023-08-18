import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:lottie/lottie.dart";

import 'chat.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              opacity: 0.7,
              image: AssetImage("assets/wp9875549.jpg"),
            )),
            child: Column(
              children: [
                Lottie.asset("assets/animation_llf0ib70.json"),
                Form(
                    key: fromkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter username";
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          validator: (value) {
                            if (!value!.contains("@")) {
                              return "enter valid mail";
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth / 2,
                          child: ElevatedButton(
                              onPressed: () {
                                if (fromkey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage()));
                                }
                              },
                              child: Text("submit")),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
