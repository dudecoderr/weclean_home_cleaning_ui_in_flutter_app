import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/balance_page.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/drawer_sub_page/offer_page.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/drawer_sub_page/profile_page.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/drawer_sub_page/settings_page.dart';
import 'package:weclean_home_cleaning_ui_in_flutter_app/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            breakpoints: const [
              // ResponsiveBreakpoint.resize(350, name: MOBILE),
              ResponsiveBreakpoint.autoScale(600, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
            ],
          ),
          debugShowCheckedModeBanner: false,
          title: 'We clean home cleaning app',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: DrawerPage(),
          // home: HomePage(),
        );
      },
    );
  }
}

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = Home1Page();
    } else if (currentPage == DrawerSections.offer) {
      container = OfferPage();
    } else if (currentPage == DrawerSections.Balance) {
      container = BalancePage();
    } else if (currentPage == DrawerSections.profile) {
      container = ProfilePage();
    } else if (currentPage == DrawerSections.settings) {
      container = Settings_page();
    }
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        backgroundColor: currentPage == DrawerSections.Balance
            ? Colors.white
            : Color(0xff573280),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: currentPage == DrawerSections.Balance
                ? Colors.black
                : Colors.white,
          ),
          leadingWidth: 80,
          toolbarHeight: 75,
          backgroundColor: currentPage == DrawerSections.Balance
              ? Colors.white
              : Color(0xff573280),
          elevation: currentPage == DrawerSections.Balance ? 0 : 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xff573280),
              radius: 40,
              backgroundImage: AssetImage("assets/profile_3.png"),
            ),
          ),
        ),
        body: container,
        endDrawer: Drawer(
          backgroundColor: Color(0xff573280).withOpacity(0.2),
          width: MediaQuery.of(context).size.width,
          elevation: 0,
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // MyHeaderDrawer(),     // MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(top: 15, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // shows the list of menu drawer
        children: [
          menuItem(
              1, "Home", currentPage == DrawerSections.home ? true : false),
          menuItem(
              2, " Offer", currentPage == DrawerSections.offer ? true : false),
          menuItem(3, "Balance",
              currentPage == DrawerSections.Balance ? true : false),
          menuItem(4, "Profile",
              currentPage == DrawerSections.profile ? true : false),
          menuItem(5, "Settings",
              currentPage == DrawerSections.settings ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title /*,IconData icon*/, bool selected) {
    return Material(
      color: selected ? Colors.transparent : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.offer;
            } else if (id == 3) {
              currentPage = DrawerSections.Balance;
            } else if (id == 4) {
              currentPage = DrawerSections.profile;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (id == 2)
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              Text(
                title,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.white60,
                  fontSize: 28.sp,
                ),
              ),
              SizedBox(width: 4.w),
              Icon(
                Icons.arrow_back_outlined,
                color: selected ? Colors.white : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  offer,
  Balance,
  profile,
  settings,
}

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Do you want to exit?",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');
                          exit(0);
                        },
                        child: const Text("Yes",
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff573280)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        print('no selected');
                        Navigator.of(context).pop();
                      },
                      child: const Text("No",
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
