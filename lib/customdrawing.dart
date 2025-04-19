import 'package:flutter/material.dart';

class HousePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.fill;

    final roofPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    final paintBottom = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;
    final roofRightPaint = Paint()
      ..color = Colors.pinkAccent
      ..style = PaintingStyle.fill;

    // Draw the body of the house
    final body = Rect.fromLTWH(
        size.width / 4, size.height / 2, size.width / 2, size.height / 2);
    canvas.drawRect(body, paint);

    final bodyBottom = Rect.fromLTWH(
        size.width / 1.33, size.height / 2, size.width / 2, size.height / 2);
    canvas.drawRect(bodyBottom, paintBottom);

    // Draw the roof
    final roofPath = Path()
      ..moveTo(size.width / 4, size.height / 2)
      ..lineTo(size.width / 2, size.height / 4)
      ..lineTo(3 * size.width / 4, size.height / 2)
      ..close();

    canvas.drawPath(roofPath, roofPaint);

    final roofRight = Path()
      ..moveTo(size.width / 5, size.height / 4)
      ..lineTo(size.width / 1, size.height / 4)
      ..lineTo(4 * size.width / 2, size.height / 2)
      ..close();
    canvas.drawPath(roofRight, roofRightPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
