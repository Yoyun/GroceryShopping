import 'package:flutter/material.dart';
import 'package:grocery_shopping/utils/size.dart';

class SignSwitchWidget extends StatefulWidget {
  final List<SignSwitchItem> items;
  final ValueChanged<int> onChanged;
  final int initialIndex;
  final bool enable;

  const SignSwitchWidget({
    Key key,
    this.items,
    this.onChanged,
    this.initialIndex = 0,
    this.enable = false,
  }) : super(key: key);

  @override
  _SignSwitchWidgetState createState() => _SignSwitchWidgetState(
        items: items,
        onChanged: onChanged,
        index: initialIndex,
      );
}

class _SignSwitchWidgetState extends State<SignSwitchWidget> {
  final List<SignSwitchItem> items;
  final ValueChanged<int> onChanged;
  int index;
  final bool enable;

  _SignSwitchWidgetState({
    this.items,
    this.onChanged,
    this.index,
    this.enable = false,
  });

  @override
  Widget build(BuildContext context) {
    if (items == null) return Text('');

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items
          .asMap()
          .map(
            (index, item) => MapEntry(
                  index,
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          width: dp(13),
                          height: dp(13),
                          decoration: BoxDecoration(
                            color: this.index == index ? Color(0xFFE94C4C) : Colors.transparent,
                            borderRadius: BorderRadius.circular(13 / 2.0),
                          ),
                        ),
                        Text(item.label,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: this.index == index ? Color(0xFF15123E) : Color(0xFFBBBBBB),
                            ).merge(fontSize20)),
                      ],
                    ),
                    onTap: () {
                      if (this.onChanged != null) this.onChanged(index);
                      if (this.enable)
                        setState(() {
                          this.index = index;
                        });
                    },
                  ),
                ),
          )
          .values
          .toList(),
    );
  }
}

class SignSwitchItem {
  String label;

  SignSwitchItem(this.label);
}
