import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/swipe_page.dart';

import '../constant/animation_constant.dart';

class Home1Page extends StatefulWidget {
  const Home1Page({Key? key}) : super(key: key);

  @override
  State<Home1Page> createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff573280),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeAnimation(
              delay: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 8),
                child: FittedBox(
                  child: Text(
                    "Good morning,",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white70, fontSize: 17.sp),
                  ),
                ),
              ),
            ),
            FadeAnimation(
              delay: 1.5,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: FittedBox(
                  child: Text(
                    "Here is your \ntask list for \ntoday",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontSize: 45.sp, wordSpacing: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            ///____________ call swiper _____________
            SwiperBuilder(),
          ],
        ));
  }
}
