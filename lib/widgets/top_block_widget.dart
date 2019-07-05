import 'dart:ui';

import 'package:flutter/material.dart';

class TopBlockWidget extends StatelessWidget {
  Size size;

  TopBlockWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    this.size ??= Size(
      MediaQueryData.fromWindow(window).size.width,
      MediaQueryData.fromWindow(window).size.height * (294 / 812.0),
    );

    return Container(
      child: CustomPaint(
        size: this.size,
        painter: TopBlockPainter(),
      ),
    );
  }
}

class TopBlockPainter extends CustomPainter {
  final Color color;
  final int designW = 375;
  final int designH = 294;

  TopBlockPainter({
    this.color = const Color(0x38E94C4C),
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = this.color
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 214 / designH * size.height);
    path.quadraticBezierTo(
      42 / designW * size.width,
      291 / designH * size.height,
      170 / designW * size.width,
      293 / designH * size.height,
    );
    path.cubicTo(
      298 / designW * size.width,
      294 / designH * size.height,
      335 / designW * size.width,
      193 / designH * size.height,
      size.width,
      235 / designH * size.height,
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
