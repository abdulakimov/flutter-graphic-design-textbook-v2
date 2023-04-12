import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String icon;
  final page;
  const CourseCard({
    super.key,
    required this.title,
    required this.icon,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        width: 150,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(icon),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
