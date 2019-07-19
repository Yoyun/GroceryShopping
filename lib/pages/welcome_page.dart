import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 133),
            child: Text(
              "Welcome to",
              style: TextStyle(fontWeight: FontWeight.bold).merge(fontSize30),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 156),
            child: Image.asset(
              "assets/images/mygroceries.png",
              width: dp(328),
              height: dp(96),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/WelcomeBg.png",
              width: dp(375),
              height: dp(425),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).whenComplete(() {
      Navigator.of(context).pushReplacementNamed("/sign_up");
    });
  }
}

