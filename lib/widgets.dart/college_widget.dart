import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/pages/college_detail_page.dart';

class CollegeWidget extends StatelessWidget {
  const CollegeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CollegeDetailPage()));
      },
      child: Container(
        width: 354.w,
        height: 243.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0, 8),
                  blurRadius: 5)
            ]),
        child: Column(children: [
          Container(
            width: 354.w,
            height: 116.h,
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/college.png',
                  )),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(Icons.share),
                ),
                Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(Icons.save),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 318.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('GHKJ Engineering College'),
                Container(
                  width: 52.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFF27C200),
                      borderRadius: BorderRadius.circular(6.r)),
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                child: Container(
                  width: 78.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFF0E3C6E),
                      borderRadius: BorderRadius.circular(6.r)),
                ),
              ),
            ],
          ),
          const Spacer(),
          Divider(),
          const Spacer(),
          Row(
            children: [Text('More than 1000+ students have been placed')],
          ),
        ]),
      ),
    );
  }
}
