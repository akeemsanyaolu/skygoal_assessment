import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CollegeDetailPage extends StatefulWidget {
  const CollegeDetailPage({super.key});

  @override
  State<CollegeDetailPage> createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage> {
  late ScrollController _scrollController;
  late Color _textColor = Colors.black;
  static const kExpandedHeight = 417.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.black;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 366.w,
        height: 56.h,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
      body: CustomScrollView(controller: _scrollController, slivers: [
        SliverAppBar(
          title: _isSliverAppBarExpanded
              ? Text(
                  'GHJK Engineering college',
                  style: TextStyle(color: _textColor),
                )
              : null,
          pinned: true,
          snap: false,
          floating: false,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF0E3C6E),
          expandedHeight: kExpandedHeight,
          flexibleSpace: _isSliverAppBarExpanded
              ? null
              : const FlexibleSpaceBar(
                  centerTitle: false,
                  background: BuildHeaderBody(),
                ),
        ),
        const DetailBody()
      ]),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => const BuildDetailBody(),
          childCount: 1),
    );
  }
}

class BuildDetailBody extends StatefulWidget {
  const BuildDetailBody({super.key});

  @override
  State<BuildDetailBody> createState() => _BuildDetailBodyState();
}

class _BuildDetailBodyState extends State<BuildDetailBody> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 428.w,
            height: 46.h,
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
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
                    //padding: EdgeInsets.only(top: 20.h),
                    width: 77,
                    height: 70,
                    color: Colors.transparent,
                    child: const Text(
                      'About college',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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
                      //padding: EdgeInsets.only(top: 20),
                      width: 78,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        'Hostel facillity',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
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
                      //padding: EdgeInsets.only(top: 20),
                      width: 77,
                      height: 70,
                      color: Colors.transparent,
                      child: SizedBox(
                        width: 77.w,
                        child: Text(
                          'Q & A',
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
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
                      //padding: EdgeInsets.only(top: 20),
                      width: 77.w,
                      height: 70,
                      color: Colors.transparent,
                      child: const Text(
                        'Events',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
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
          Center(
            child: SizedBox(
              width: 368.w,
              height: 3,
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const WormEffect(
                      spacing: 18,
                      dotColor: Colors.transparent,
                      dotHeight: 2,
                      dotWidth: 77,
                      activeDotColor: Colors.black)),
            ),
          ),
          SizedBox(
            height: 785.h,
            child: PageView(
              controller: controller,
              children: [
                SizedBox(
                  height: 785.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 31.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.'),
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Image(image: AssetImage('assets/img_location.png')),
                            SizedBox(
                              height: 33.h,
                            ),
                            Text(
                              'Student Review',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [],
                            ),
                            Container(
                              width: 368.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.03),
                                        blurRadius: 10,
                                        offset: Offset(8, 8)),
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.03),
                                        blurRadius: 10,
                                        offset: Offset(-8, -8))
                                  ]),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            GestureDetector(
                              child: Container(
                                width: 366.w,
                                height: 56.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF0E3C6E),
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                  child: Text(
                                    'Apply Now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
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

class HeaderBody extends StatelessWidget {
  const HeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => const BuildHeaderBody(),
          childCount: 1),
    );
  }
}

class BuildHeaderBody extends StatelessWidget {
  const BuildHeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 428.w,
            height: 83.h,
            color: const Color(0xFF0E3C6E),
          ),
          Container(
            width: 428.w,
            height: 271.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/college_detail.png',
                    ))),
          ),
          Container(
            color: Colors.white,
            height: 16.h,
          ),
          Container(
            //
            width: 428.w,
            height: 100.h,
            padding: EdgeInsets.only(left: 19.w, right: 24.w),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.transparent)),
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
                          color: const Color(0xFF8E8E8E),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  width: 52.w,
                  height: 74.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFF27C200),
                      borderRadius: BorderRadius.circular(6.r)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
