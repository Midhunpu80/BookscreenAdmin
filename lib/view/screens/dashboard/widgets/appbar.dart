import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget appbar() {
  return SliverAppBar(
    toolbarHeight: 10.h,
    backgroundColor: blu,
    title:alltext(
            txt: "Dashboard",
            col:wh,
            siz: 15.sp,
            wei: FontWeight.bold,
            max: 1),
            centerTitle: true,
  );
}
