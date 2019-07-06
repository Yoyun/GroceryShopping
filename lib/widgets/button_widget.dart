import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final Color bgColor;
  final String text;
  final Color textColor;
  final VoidCallback onTap;

  const Button({
    Key key,
    this.width = 175,
    this.height = 45,
    this.bgColor = const Color(0xFFE94C4C),
    this.text = "Unknown",
    this.textColor = Colors.white,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.only(
        left: dp(45),
        right: dp(45),
        top: (dp(this.height) - dp(20)) / 2.0,
        bottom: (dp(this.height) - dp(20)) / 2.0,
      ),
      color: this.bgColor,
      onPressed: this.onTap ?? () {},
      textColor: this.textColor,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dp(this.height)),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: this.textColor,
          fontWeight: FontWeight.bold,
        ).merge(fontSize20),
      ),
    );
  }
}
