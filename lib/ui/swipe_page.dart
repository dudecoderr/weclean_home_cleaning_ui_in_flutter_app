import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../constant/swiper_constant.dart';

class SwiperBuilder extends StatefulWidget {
  SwiperBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<SwiperBuilder> createState() => _SwiperBuilderState();
}

class _SwiperBuilderState extends State<SwiperBuilder> {
/*
  List imagepath = [
    'assets/profile_3.png',
    'assets/map.png',
    'assets/profile_3.png',
  ];
*/

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Swiper(
              itemWidth: 400.w,
              itemHeight: 340.h,
              loop: true,
              duration: 1000,
              layout: SwiperLayout.STACK,
              scrollDirection: Axis.vertical,
              itemCount: Data.length,
              itemBuilder: (context, index) {
                return FittedBox(
                  child: Container(
                    width: 400.w,
                    height: 400.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff573280),
                            child: Icon(
                              Data[index].icon,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            Data[index].titles!,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color(0xff573280),
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 15.h),

                          ///_______________ time,km,row code____________
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Data[index].timeIcon,
                                    color: Color(0xff485569),
                                    size: 18.sp,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    Data[index].timeTitles!,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Color(0xff485569),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Icon(
                                    Data[index].kmIcon,
                                    color: Color(0xff485569),
                                    size: 18.sp,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    Data[index].kmTitles!,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Color(0xff485569),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Icon(
                                    Data[index].conditionIcon,
                                    color: Color(0xff485569),
                                    size: 18.sp,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    Data[index].conditionTitles!,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Color(0xff485569),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          FittedBox(
                            child: Container(
                              height: 160.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  image: DecorationImage(
                                    image: AssetImage(Data[index].images!),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
