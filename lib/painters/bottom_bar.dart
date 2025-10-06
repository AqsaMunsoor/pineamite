import 'package:flutter/material.dart';

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return _createBottomBarPath(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = _createBottomBarPath(size);

    final fillPaint =
        Paint()
          ..style = PaintingStyle.fill
          ..shader = const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xFF09001A), Color(0x8C2C1C4A)],
            stops: [0.2845, 1.0],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final borderPaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.0
          ..color = Colors.white.withValues(alpha: 0.15);

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Path _createBottomBarPath(Size size) {
  final path = Path();
  const cornerRadius = 30.0;
  const bumpHeight = 25.0;
  const barTopY = bumpHeight;

  path.moveTo(0, size.height);
  path.lineTo(0, barTopY + cornerRadius);
  path.quadraticBezierTo(0, barTopY, cornerRadius, barTopY);
  path.lineTo(size.width * 0.35, barTopY);
  path.cubicTo(
    size.width * 0.40,
    barTopY,
    size.width * 0.43,
    0,
    size.width * 0.5,
    0,
  );
  path.cubicTo(
    size.width * 0.57,
    0,
    size.width * 0.60,
    barTopY,
    size.width * 0.65,
    barTopY,
  );
  path.lineTo(size.width - cornerRadius, barTopY);
  path.quadraticBezierTo(
    size.width,
    barTopY,
    size.width,
    barTopY + cornerRadius,
  );
  path.lineTo(size.width, size.height);
  path.close();

  return path;
}
