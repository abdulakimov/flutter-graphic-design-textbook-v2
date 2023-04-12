import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/resources/firestore_methods.dart';
import 'package:flutter_gd_textbook/screens/testing_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController gnameController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FirestoreMethods _firestoreMethods = FirestoreMethods();

  late bool isLoading = false;

  final List user = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              Center(
                child: Container(
                  width: size.width - 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 25,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Ma'lumotlaringizni kiriting",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.name,
                          controller: fnameController,
                          decoration: InputDecoration(
                            hintText: "Ism",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.name,
                          controller: lnameController,
                          decoration: InputDecoration(
                            hintText: "Familiya",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.name,
                          controller: gnameController,
                          decoration: InputDecoration(
                            hintText: "Guruh",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          color: Colors.deepPurple,
                          textColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                            });

                            _firestoreMethods.addToTestHistory(
                              fnameController.text,
                              lnameController.text,
                              gnameController.text,
                            );

                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => TestingScreen(
                                  name: fnameController.text,
                                ),
                              ),
                            );
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: Text(
                            isLoading ? "Yuklanmoqda..." : "Boshlash",
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
