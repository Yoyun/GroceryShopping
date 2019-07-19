import 'package:flutter/material.dart';
import 'package:grocery_shopping/pages/sign_in_page.dart';
import 'package:grocery_shopping/pages/sign_up_page.dart';
import 'package:grocery_shopping/pages/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => WelcomePage(),
        "/sign_up": (context) => SignUpPage(),
        "/sign_in": (context) => SignInPage(),
      },
    );
  }
}
