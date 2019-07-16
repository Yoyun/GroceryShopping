import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';
import 'package:grocery_shopping/widgets/button_widget.dart';
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
              width: dp(268),
              height: dp(286),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: dp(38), right: dp(38)),
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
                    initialIndex: 0,
                    onChanged: (index) {
                      if (index == 1) {
//                        Navigator.push(context, PageRouteBuilder(pageBuilder: null));
                        Navigator.of(context).pushNamed('/sign_in');
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
                    padding: EdgeInsets.only(top: dp(21)),
                    child: EditView(obscureText: true, hint: 'Confirm Password'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: dp(38), bottom: dp(6)),
                    child: Button(
                      text: "SIGN UP",
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 127),
            alignment: Alignment.bottomCenter,
            child: Text(
              """By creating an account you agree to our\nTerms of Service and Privacy Policy""",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: dp(1.1),
                fontWeight: FontWeight.w500,
              ).merge(fontSize12),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: dp(42)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(49),
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/GooglePlus.png",
                      width: dp(67),
                      height: dp(67),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 1,
                ),
                Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(49),
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/Facebook.png",
                      width: dp(67),
                      height: dp(67),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
