import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';

class EditView extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;

  EditView({
    Key key,
    this.controller,
    this.hint = "",
    this.obscureText = false,
  }) : super(key: key);

  @override
  _EditViewState createState() => _EditViewState(
        controller: controller,
        hint: hint,
        obscureText: obscureText,
      );
}

class _EditViewState extends State<EditView> {
  final TextEditingController controller;
  final bool obscureText;
  final String hint;

  _EditViewState({this.controller, this.hint = "", this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: this.obscureText,
      style: TextStyle(color: Color(0xFF15123E)).merge(fontSize15),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xFFBBBBBB)).merge(fontSize15),
        contentPadding: EdgeInsets.only(
          left: dp(20),
          right: dp(20),
          top: dp(13),
          bottom: dp(15),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF111111), width: 1),
            borderRadius: BorderRadius.circular(0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF555555), width: 2),
            borderRadius: BorderRadius.circular(0)),
      ),
    );
  }
}
