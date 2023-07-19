import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

List col = [
  const Color.fromARGB(255, 255, 17, 0),
  Colors.brown,
  const Color.fromARGB(137, 57, 83, 255),
  const Color.fromRGBO(156, 39, 176, 1),
  const Color.fromARGB(255, 255, 230, 0),
  const Color.fromARGB(255, 0, 255, 8),
  Colors.orange,


];
    List<String> data = [
    "Dashboard",
    "Movie Mangement",
    "UserManagement",
    "Owner Mangement",
    "Owner Approvel",
    "user order",
    "Sails Report"
  ];

Widget iconcard(var index) {
  List<IconData> ico = [
    Icons.dashboard,
    Icons.movie,
    Icons.person,
    Icons.theaters,
    Icons.verified,
    Icons.shopping_cart,
    Icons.report
  ];

  return Padding(
    padding: EdgeInsets.only(left: 1.h, top: 1.h),
    child: Container(
      height: 7.h,
      width: 15.w,
      decoration: BoxDecoration(
          color: col[index], borderRadius: BorderRadius.circular(1.h)),
      child: Icon(
        ico[index],
        size: 4.h,
      ),
    ),
  );
}

Widget textdata(var index) {
  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: Container(
      height: 6.h,
      width: 20.w,
      child: alltext(
          txt: data[index], col: bl, siz: 12.sp, wei: FontWeight.bold, max: 2),
    ),
  );
}
