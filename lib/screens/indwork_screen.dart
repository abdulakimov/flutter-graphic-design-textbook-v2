import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/theme_card.dart';

class IndworkScreen extends StatelessWidget {
  final String title;
  const IndworkScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ThemeCard(
          title: "Mustaqil ta'lim",
          url: "https://saving-files.vercel.app/files/ind.pdf"),
    );
  }
}
