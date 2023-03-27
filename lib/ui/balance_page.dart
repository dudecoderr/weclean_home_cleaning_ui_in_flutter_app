import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/animation_constant.dart';
import 'Balance_tabbar_page/last_week_chat_page.dart';
import 'Balance_tabbar_page/nov10to15_chart_page.dart';
import 'Balance_tabbar_page/nov_chat_page.dart';
import 'Balance_tabbar_page/this_week_chart_page.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeAnimation(
              delay: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 8),
                child: FittedBox(
                  child: Text(
                    "Your balance",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xff573280), fontSize: 17.sp),
                  ),
                ),
              ),
            ),
            FadeAnimation(
              delay: 1.5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FittedBox(
                  child: Text(
                    "\$720,00",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xff573280),
                        fontSize: 45.sp,
                        wordSpacing: 3),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            FadeAnimation(
              delay: 2,
              child: Container(
                // color: Colors.yellow.shade100,
                child: SizedBox(
                  height: 500.h,
                  child: DefaultTabController(
                    length: 4, // length of tabs
                    initialIndex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: const TabBar(
                            labelColor: Color(0xff573280),
                            labelStyle: TextStyle(
                                fontSize: 13.5, fontWeight: FontWeight.w600),
                            unselectedLabelColor: Color(0xff485569),
                            indicatorColor: Color(0xff573280),
                            tabs: [
                              Tab(text: 'This week'),
                              Tab(text: 'Last week'),
                              Tab(text: '17-23 nov'),
                              Tab(text: '10-15 nov'),
                            ],
                          ),
                        ),
                        Container(
                          height: 2, //height of TabBarView
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Color(0xff485569), width: 0.5))),
                        ),
                        Expanded(
                          child: Container(
                            // color: Colors.yellow,
                            height: 320,
                            child: TabBarView(
                              children: [
                                ThisWeekPage(),
                                LastWeekPage(),
                                NovChatPage(),
                                Nov10to15ChartPage(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
