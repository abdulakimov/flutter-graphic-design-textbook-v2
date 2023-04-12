import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/course_card.dart';
import 'package:flutter_gd_textbook/constants/constants.dart';
import 'package:flutter_gd_textbook/constants/drawer_data.dart';
import 'package:flutter_gd_textbook/resources/auth_methods.dart';
import 'package:flutter_gd_textbook/resources/firestore_methods.dart';
import 'package:flutter_gd_textbook/screens/about_screen.dart';
import 'package:flutter_gd_textbook/screens/reader_screen.dart';
import 'package:flutter_gd_textbook/screens/test_screen.dart';

class HomePage extends StatefulWidget {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Grafik Dizayn"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/icon.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Grafik Dizayn",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Column(children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => TestScreen()),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(drawerData[0]["icon"]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        drawerData[0]["title"],
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ReaderScreen(
                        title: "Izohli lug'at",
                        url:
                            "https://saving-files.vercel.app/files/glossary.pdf",
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(drawerData[1]["icon"]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        drawerData[1]["title"],
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => AboutPage(),
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(drawerData[2]["icon"]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        drawerData[2]["title"],
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.4,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              widget._authMethods.user.photoURL as String),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () => AuthMethods().signOut(),
                      child: Icon(Icons.logout),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Wrap(
                spacing: 40,
                runSpacing: 40,
                children: List.generate(courses.length, (index) {
                  return CourseCard(
                    title: courses[index]['title'],
                    icon: courses[index]['image'],
                    page: courses[index]['page'],
                  );
                })),
          ),
        ),
      ),
    );
  }
}
