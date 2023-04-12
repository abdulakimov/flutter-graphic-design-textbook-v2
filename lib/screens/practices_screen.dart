import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/theme_card.dart';
import 'package:flutter_gd_textbook/constants/practices_data.dart';

class PracticesScreen extends StatelessWidget {
  final String title;
  const PracticesScreen({super.key, required this.title});

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
            children: List.generate(practices.length, (index) {
              return ThemeCard(
                title: practices[index]['title'],
                url: practices[index]['url'],
              );
            }),
          ),
        ),
      ),
    );
  }
}
