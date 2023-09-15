import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSchoolClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(0 * _xScaling, 20 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      8.9543 * _yScaling,
      8.95431 * _xScaling,
      0 * _yScaling,
      20 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      20 * _xScaling,
      0 * _yScaling,
      334 * _xScaling,
      0 * _yScaling,
      334 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      345.046 * _xScaling,
      0 * _yScaling,
      354 * _xScaling,
      8.95431 * _yScaling,
      354 * _xScaling,
      20 * _yScaling,
    );
    path.cubicTo(
      354 * _xScaling,
      20 * _yScaling,
      354 * _xScaling,
      106.5 * _yScaling,
      354 * _xScaling,
      106.5 * _yScaling,
    );
    path.cubicTo(
      354 * _xScaling,
      117.546 * _yScaling,
      345.046 * _xScaling,
      126.5 * _yScaling,
      334 * _xScaling,
      126.5 * _yScaling,
    );
    path.cubicTo(
      334 * _xScaling,
      126.5 * _yScaling,
      294.75 * _xScaling,
      126.5 * _yScaling,
      294.75 * _xScaling,
      126.5 * _yScaling,
    );
    path.cubicTo(
      286.052 * _xScaling,
      126.5 * _yScaling,
      279 * _xScaling,
      133.552 * _yScaling,
      279 * _xScaling,
      142.25 * _yScaling,
    );
    path.cubicTo(
      279 * _xScaling,
      150.948 * _yScaling,
      271.948 * _xScaling,
      158 * _yScaling,
      263.25 * _xScaling,
      158 * _yScaling,
    );
    path.cubicTo(
      263.25 * _xScaling,
      158 * _yScaling,
      20 * _xScaling,
      158 * _yScaling,
      20 * _xScaling,
      158 * _yScaling,
    );
    path.cubicTo(
      8.95431 * _xScaling,
      158 * _yScaling,
      0 * _xScaling,
      149.046 * _yScaling,
      0 * _xScaling,
      138 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      138 * _yScaling,
      0 * _xScaling,
      20 * _yScaling,
      0 * _xScaling,
      20 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      20 * _yScaling,
      0 * _xScaling,
      20 * _yScaling,
      0 * _xScaling,
      20 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
