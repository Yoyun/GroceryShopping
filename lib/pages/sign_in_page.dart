import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';
import 'package:grocery_shopping/widgets/button_widget.dart';
import 'package:grocery_shopping/widgets/check_box.dart';
import 'package:grocery_shopping/widgets/edit_view.dart';
import 'package:grocery_shopping/widgets/sign_switch_widget.dart';
import 'package:grocery_shopping/widgets/top_block_widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isKeepMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        TopBlockWidget(),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: dp(53)),
          child: Image.asset(
            "assets/images/SignInBg.png",
            fit: BoxFit.cover,
            width: dp(273),
            height: dp(224),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(
            left: dp(38),
            right: dp(38),
            top: dp(107),
          ),
          child: Container(
            padding: EdgeInsets.all(dp(31)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(dp(48)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, dp(3)),
                    blurRadius: dp(20),
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
                  initialIndex: 1,
                  onChanged: (index) {
                    if (index == 0) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: dp(21)),
                  child: EditView(hint: 'Email'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: dp(21)),
                  child: EditView(obscureText: true, hint: 'Password'),
                ),
                Padding(
                    padding: EdgeInsets.only(top: dp(28)),
                    child: CheckBox(
                      value: this.isKeepMe,
                      text: "Keep me signed in",
                      onChanged: (b) => setState(() => this.isKeepMe = b),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: dp(32), bottom: dp(6)),
                  child: Button(
                    text: "SIGN IN",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
