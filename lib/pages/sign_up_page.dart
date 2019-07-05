import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';
import 'package:grocery_shopping/widgets/edit_view.dart';
import 'package:grocery_shopping/widgets/sign_switch_widget.dart';
import 'package:grocery_shopping/widgets/top_block_widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TopBlockWidget(),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/SignUpBg.png",
              fit: BoxFit.cover,
              width: 268,
              height: 286,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(left: 38, right: 38),
              padding: const EdgeInsets.all(31),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(48),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                      spreadRadius: 3,
                    )
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new SignSwitchWidget(
                    items: [
                      SignSwitchItem("SIGN UP"),
                      SignSwitchItem("SIGN IN"),
                    ],
                    initialIndex: 0,
                    onChanged: (index) {
                      if (index == 1) {
                        Navigator.of(context).pushNamed('/sign_in');
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: EditView(hint: 'Email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: EditView(obscureText: true, hint: 'Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: EditView(obscureText: true, hint: 'Confirm Password'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
