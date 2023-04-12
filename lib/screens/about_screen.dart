import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/commentator.png"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Ergashev Sardorbek Akbrjon o'g'li",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Email: ergashevsardorbek6@gmail.com")
          ],
        ),
      ),
    );
  }
}
