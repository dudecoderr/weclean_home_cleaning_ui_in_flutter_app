import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings_page extends StatefulWidget {
  const Settings_page({Key? key}) : super(key: key);

  @override
  State<Settings_page> createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/sad.png",
              width: 120.w,
              height: 120.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "No Data",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
