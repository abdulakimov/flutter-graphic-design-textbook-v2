import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/screens/reader_screen.dart';
import 'package:line_icons/line_icons.dart';

class ThemeCard extends StatelessWidget {
  final String title;
  final String url;
  const ThemeCard({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => ReaderScreen(
              title: title,
              url: url,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Icon(LineIcons.arrowRight)
                ],
              ),
            )),
      ),
    );
  }
}
