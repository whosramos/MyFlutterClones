import 'package:flutter/material.dart';

class MyProgressLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    double endPointRadius = 0.0;
    double width = size.width;

    var totalTime = 6.01;
    var currentTime = 2.4;
    double stepPerDay = width / totalTime;

    canvas.drawLine(Offset(endPointRadius, 0.0),
        Offset(endPointRadius + stepPerDay * currentTime, 0.0), paint);
    paint.style = PaintingStyle.stroke;
    paint.color = Colors.grey.withOpacity(0.5);
    canvas.drawLine(Offset(endPointRadius + stepPerDay * currentTime, 0.0),
        Offset(stepPerDay * totalTime, 0.0), paint);
    paint.style = PaintingStyle.fill;
    paint.color = Colors.white;
    canvas.drawCircle(
        Offset(endPointRadius + stepPerDay * currentTime, 0.0), 3.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
