import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';

class CheckBox extends StatelessWidget {
  final bool value;
  final String text;
  final ValueChanged<bool> onChanged;

  const CheckBox({
    Key key,
    this.value = true,
    this.text,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () => this.onChanged(!this.value),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: dp(18),
              height: dp(18),
              decoration: this.value
                  ? BoxDecoration(
                      color: Color(0xFFE94C4C),
                    )
                  : BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFBBBBBB),
                        width: dp(1),
                      )),
              child: this.value
                  ? Icon(
                      Icons.check,
                      size: dp(18),
                      color: Colors.white,
                    )
                  : null,
            ),
            Padding(
              padding: EdgeInsets.only(left: dp(11)),
              child: this.text != null ? Text(this.text) : Text(""),
            )
          ],
        ),
      ),
    );
  }
}
