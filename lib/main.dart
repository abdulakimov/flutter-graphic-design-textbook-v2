import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_gd_textbook/resources/auth_methods.dart';
import 'package:flutter_gd_textbook/screens/home_page.dart';
import 'package:flutter_gd_textbook/screens/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grafik Dizayn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: DrawerThemeData(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: const Color(0xFFF9F9F9),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            return HomePage();
          }
          return const SignInScreen();
        },
      ),
      // home: HomePage(),
    );
  }
}
