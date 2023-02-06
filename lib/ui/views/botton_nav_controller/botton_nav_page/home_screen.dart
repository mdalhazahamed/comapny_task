import 'package:company_task/route/route.dart';
import 'package:company_task/ui/views/botton_nav_controller/see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Container(
                    constraints: BoxConstraints(
                      // maxHeight: 386.h,
                      maxHeight: 396.h,
                      maxWidth: double.infinity.w,
                    ),
                    //height: 386.h,
                    //width: double.infinity.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 12, 37, 29),
                          Color.fromARGB(255, 46, 122, 97),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 57.5.h,
                              left: 15.w,
                              right: 15.w,
                              bottom: 37.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, Habib 👋",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 7.h),
                                  Text(
                                    "Let’s explore your notes",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 0.7),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "assets/images/profile.png",
                                width: 52,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 330.h,
                          height: 140.w,
                          decoration: BoxDecoration(
                            color: Color(0xFF1B503E),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 16.sp, left: 16.sp, top: 16.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome to TickTick Task",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(height: 12.sp),
                                Text(
                                  "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 21.sp),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 31.h,
                                      width: 109.w,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(36, 150, 109, 1),
                                        borderRadius:
                                            BorderRadius.circular(70.r),
                                        border: Border.all(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.3),
                                        ),
                                      ),
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              size: 22.sp,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              "Watch Video",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/bannar.png",
                                      // width: 45.w,
                                      height: 52,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reminder Task",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(255, 255, 255, 0.7),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -55,
                  child: Row(
                    children: [
                      SizedBox(width: 6.w),
                      CardWidgets(
                        title: "Online Class Routine",
                        subtitle: "Save Date:",
                        date: "10/12/2022",
                        color: Color(0xFFFBAB32),
                      ),
                      CardWidgets(
                        title: "Office Work List",
                        subtitle: "Save Date:",
                        date: "15/12/2022",
                        color: Color(0xFF6CA42E),
                      ),
                      CardWidgets(
                        title: "Day Task",
                        subtitle: "Save Date:",
                        date: "10/12/2022",
                        color: Color(0xFF3179E4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 75.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Tasks",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context, CupertinoPageRoute(builder: (_) => SeeAll())),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            allTaskWidgets(),
          ],
        ),
      ),
    );
  }
}

class allTaskWidgets extends StatelessWidget {
  const allTaskWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 10; i++) ...[
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 12, left: 5),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 28.33.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBAB32),
                            borderRadius: BorderRadius.circular(0.5),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/Group.png",
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  //color: Colors.redAccent,
                                  ),
                              BoxShadow(
                                  color: Color(0xFFFBAB32),
                                  // blurRadius: 3,
                                  offset: Offset(1, 1)),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Online Class Routine",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              // style: style16(Colors.black),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  "Save Date:",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(4, 46, 43, 0.5),
                                  ),
                                ),
                                Text(
                                  "10/12/2022",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color.fromRGBO(4, 46, 43, 0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class CardWidgets extends StatelessWidget {
  String title;
  String subtitle;
  String date;
  Color color;
  CardWidgets({
    required this.date,
    required this.subtitle,
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          // height: 91.h,
          height: 108.h,
          width: 139.w,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              height: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.only(left: 10.5.w, top: 10.17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 28.33.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(0.5),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/Group.png",
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                              //color: Colors.redAccent,
                              ),
                          BoxShadow(
                              color: color,
                              // blurRadius: 3,
                              offset: Offset(1, 1)),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.5.h),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Row(
                      children: [
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(4, 46, 43, 0.5),
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(4, 46, 43, 0.5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
