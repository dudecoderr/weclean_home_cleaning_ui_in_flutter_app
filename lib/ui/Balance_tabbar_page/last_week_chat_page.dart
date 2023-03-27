import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/animation_constant.dart';

class LastWeekPage extends StatefulWidget {
  const LastWeekPage({Key? key}) : super(key: key);

  @override
  State<LastWeekPage> createState() => _LastWeekPageState();
}

class _LastWeekPageState extends State<LastWeekPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 0.5,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FittedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ///_____________ 0 _______________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 0 ? 550 : 550,
                          width: selectedIndex == 0 ? 150 : 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 0
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 0 ? "" : "\$550",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 0
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 100.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$550",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "3 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "4.9/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 0 ? "SUNDAY" : "SUN",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///__________________________ 1 _______________________________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 1 ? 210 : 210,
                          width: selectedIndex == 1 ? 150 : 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 1
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 1 ? "" : "\$210",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 1
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$210",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "3 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "6.5/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 1 ? "MONDAY" : "MON",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///_______________________ 2 _____________________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 2 ? 450 : 450,
                          width: selectedIndex == 2 ? 150 : 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 2
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 2 ? "" : "\$450",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 2
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 60.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$450",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "6.9/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 2 ? "THURSDAY" : "THU",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///____________________ 3 _____________________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 3 ? 230 : 230,
                          width: selectedIndex == 3 ? 150 : 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 3
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 3 ? "" : "\$230",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 3
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 10.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$230",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "4 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "3 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2.4/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 3 ? "WEDNESDAY" : "WED",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///__________________________ 4 _____________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 4;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 4 ? 350 : 350,
                          width: selectedIndex == 4 ? 150 : 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 4
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 4 ? "" : "\$350",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 4
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 25.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$350",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "8 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "5 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "9.2/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 4 ? "THURSDAY" : "THU",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///____________________ 5 __________________________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 5;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 5 ? 460 : 460,
                          width: selectedIndex == 5 ? 150 : 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 5
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 5 ? "" : "\$460",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 5
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 100.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$460",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "3 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "1 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "4.9/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 5 ? "FRIDAY" : "FRI",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  ///____________________________ 6 ____________________________
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 6;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: selectedIndex == 6 ? 500 : 500,
                          width: selectedIndex == 6 ? 150 : 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white12, width: 0.2),
                            color: selectedIndex == 6
                                ? Color(0xff573280)
                                : Color(0xff573280).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                selectedIndex == 6 ? "" : "\$500",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              selectedIndex == 6
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                        right: 5.w,
                                        left: 5.w,
                                        top: 130.h,
                                      ),
                                      child: FadeAnimation(
                                        delay: 0.8,
                                        child: FittedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$500",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.timelapse,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "8 hours spent",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.task,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "2 tasks finished",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "3 location",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.star,
                                                      color: Colors.white,
                                                      size: 15.sp),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    "4.6/5 avg rating",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          selectedIndex == 6 ? "SATURDAY" : "SAT",
                          style: TextStyle(
                              color: Color(0xff573280),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
