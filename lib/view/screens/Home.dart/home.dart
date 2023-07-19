import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/Home.dart/widgets/pages.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bl.withOpacity(0.3)
      ,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 10.h,
        backgroundColor: re,
        title: alltext(
            txt: "ADMIN PANNEL",
            col: wh,
            siz: 15.sp,
            wei: FontWeight.bold,
            max: 1),
      ),
      body: Column(
        children: [
          pages(),
        ],
      ),
    );
  }
}
