import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/theme_card.dart';
import 'package:flutter_gd_textbook/constants/lectures_data.dart';

class LecturesScreen extends StatelessWidget {
  final String title;
  const LecturesScreen({super.key, required this.title});

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
            children: List.generate(lectures.length, (index) {
              return ThemeCard(
                title: lectures[index]['title'],
                url: lectures[index]['url'],
              );
            }),
          ),
        ),
      ),
    );
  }
}
