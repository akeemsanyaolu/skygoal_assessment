import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/widgets.dart/college_widget.dart';

class CollegesPage extends StatelessWidget {
  const CollegesPage({super.key});

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
            SizedBox(
              height: 100.h,
            ),
            CollegeWidget(),
          ],
        ),
      ),
    );
  }
}
