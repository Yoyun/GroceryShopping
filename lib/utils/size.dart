import 'dart:ui';

import 'package:flutter/material.dart';

double dp(double size) {
  return MediaQueryData.fromWindow(window).size.width / 375.0 * size;
}

final TextStyle fontSize12 = TextStyle(fontSize: dp(12));
final TextStyle fontSize14 = TextStyle(fontSize: dp(14));
final TextStyle fontSize15 = TextStyle(fontSize: dp(15));
final TextStyle fontSize16 = TextStyle(fontSize: dp(16));
final TextStyle fontSize18 = TextStyle(fontSize: dp(18));
final TextStyle fontSize20 = TextStyle(fontSize: dp(20));
final TextStyle fontSize22 = TextStyle(fontSize: dp(22));
final TextStyle fontSize24 = TextStyle(fontSize: dp(24));
final TextStyle fontSize26 = TextStyle(fontSize: dp(26));
final TextStyle fontSize28 = TextStyle(fontSize: dp(28));
final TextStyle fontSize30 = TextStyle(fontSize: dp(30));
