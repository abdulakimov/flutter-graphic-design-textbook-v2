import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatelessWidget {
  final String title;
  final String url;
  const ReaderScreen({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SfPdfViewer.network(url),
    );
  }
}
