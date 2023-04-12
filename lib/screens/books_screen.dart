import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/components/theme_card.dart';
import 'package:flutter_gd_textbook/constants/books_data.dart';

class BookScreen extends StatelessWidget {
  final String title;
  const BookScreen({super.key, required this.title});

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
            children: List.generate(books.length, (index) {
              return ThemeCard(
                title: books[index]['title'],
                url: books[index]['url'],
              );
            }),
          ),
        ),
      ),
    );
  }
}
