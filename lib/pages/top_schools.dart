import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skygoal/widgets.dart/top_school_widget.dart';

class TopSchools extends StatelessWidget {
  const TopSchools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 428.w,
              height: 153.h,
              decoration: BoxDecoration(
                  color: const Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  )),
            ),
            ClipPath(
              clipper: TopSchoolClipper(),
              child: Container(
                width: 354.w,
                height: 158,
                color: Colors.red,
                child: Text("Hello World"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
