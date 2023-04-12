import 'package:flutter/material.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("O'qituvchi dasturi"),
      ),
      body: Center(
        child: Container(
          width: size.width - 30,
          height: size.height - 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/document/document.jpg",
                ),
                fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
