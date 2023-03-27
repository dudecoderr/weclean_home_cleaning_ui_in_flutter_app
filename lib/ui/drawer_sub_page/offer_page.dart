import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
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
