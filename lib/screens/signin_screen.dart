import 'package:flutter/material.dart';
import 'package:flutter_gd_textbook/resources/auth_methods.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late bool isLoading = false;
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/tap.png"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Ilovadan foydalanish uchun iltimos hisobingizga kiring!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  await _authMethods.signInWithGoogle(context);
                  // if (res) {
                  //   Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //       builder: (context) => HomePage(),
                  //     ),
                  //   );
                  // }
                  setState(() {
                    isLoading = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/google.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(isLoading ? "Yuklanmoqda..." : "Google orqali kirish"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
