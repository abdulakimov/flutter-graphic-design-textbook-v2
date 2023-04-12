import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/theme_card.dart';
import 'package:flutter_gd_textbook/constants/lab_data.dart';
import 'package:flutter_gd_textbook/constants/lectures_data.dart';

class LabScreen extends StatelessWidget {
  final String title;
  const LabScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(labs.length, (index) {
              return ThemeCard(
                title: labs[index]['title'],
                url: labs[index]['url'],
              );
            }),
          ),
        ),
      ),
    );
  }
}
