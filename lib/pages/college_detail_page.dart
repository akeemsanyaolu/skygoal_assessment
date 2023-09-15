import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CollegeDetailPage extends StatefulWidget {
  const CollegeDetailPage({super.key});

  @override
  State<CollegeDetailPage> createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Color(0xFF0E3C6E),
      ),
      body: Column(
        children: [
          Container(
            width: 478.w,
            height: 271.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/college_detail.png',
                    ))),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            width: 385.w,
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GHJK Engineering college',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nFelis consectetur nulla pharetra praesent hendrerit \nvulputate viverra. Pellentesque aliquam tempus faucibus \nest.',
                      style: TextStyle(
                          color: Color(0xFF8E8E8E),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  width: 52.w,
                  height: 74.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF27C200),
                      borderRadius: BorderRadius.circular(6.r)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 428.w,
            height: 46.h,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              border: Border(
                  top: BorderSide(
                      width: 1.h, color: Colors.black.withOpacity(0.1))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 20),
                    width: 77,
                    height: 70,
                    color: Colors.transparent,
                    child: Text(
                      'Crypto',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                ),
                GestureDetector(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 20),
                      width: 77,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        'History',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  onTap: () {
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                ),
                GestureDetector(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 20),
                      width: 77,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        'Q & A',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  onTap: () {
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                ),
                GestureDetector(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 20),
                      width: 77,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        'Q & A',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 3,
            child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const WormEffect(
                    spacing: 37,
                    dotColor: Colors.transparent,
                    dotHeight: 2,
                    dotWidth: 77,
                    activeDotColor: Colors.black)),
          ),
          SizedBox(
            height: 200,
            child: PageView(
              controller: controller,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                        child: Text('Hello World'),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 100.h,
                      child: const Text('Nothing to see here'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 100.h,
                      child: const Text('Nothing to see here'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 100.h,
                      child: const Text('Nothing to see here'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
