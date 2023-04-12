import 'package:flutter_gd_textbook/screens/books_screen.dart';
import 'package:flutter_gd_textbook/screens/document_screen.dart';
import 'package:flutter_gd_textbook/screens/indwork_screen.dart';
import 'package:flutter_gd_textbook/screens/lab_screen.dart';
import 'package:flutter_gd_textbook/screens/lectures_screen.dart';
import 'package:flutter_gd_textbook/screens/practices_screen.dart';
import 'package:flutter_gd_textbook/screens/videos_screen.dart';

List courses = [
  {
    "title": "Kirish",
    "image": "assets/images/house.png",
    "page": const DocumentScreen()
  },
  {
    "title": "Ma'ruza mashg'uloti",
    "image": "assets/images/pages.png",
    "page": const LecturesScreen(
      title: "Ma'ruza mashg'uloti",
    )
  },
  {
    "title": "Amaliy mashg'ulot",
    "image": "assets/images/tips.png",
    "page": const PracticesScreen(
      title: "Amaliy mashg'ulot",
    )
  },
  {
    "title": "Labaratoriya",
    "image": "assets/images/search.png",
    "page": const LabScreen(
      title: "Labaratoriya",
    )
  },
  {
    "title": "Video darslar",
    "image": "assets/images/youtube.png",
    "page": const VideosScreen(
      title: "Video darslar",
    )
  },
  {
    "title": "Adabiyotlar",
    "image": "assets/images/folder.png",
    "page": const BookScreen(
      title: "Adabiyotlar",
    )
  },
  {
    "title": "Mustaqil",
    "image": "assets/images/mortarboard.png",
    "page": const IndworkScreen(
      title: "Mustaqil",
    )
  },
];
