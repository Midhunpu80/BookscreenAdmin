import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget approve_button({
  required String id,
  required BuildContext context,
  required var index,
}) {
  return InkWell(
      onTap: () {},
      child: Container(
        width: 20.h,
        height: 12.h,
        color: blu,
        child: Center(
            child: alltext(
                txt: "pending",
                col: wh,
                siz: 20.sp,
                wei: FontWeight.bold,
                max: 1)),
      ));
}

// ignore: non_constant_identifier_names
block_messege({required var tit, required var mess, required Color col}) {
  Get.snackbar(tit, mess,
      backgroundColor: col,
      maxWidth: 20.h,
      //padding: EdgeInsets.all(5.h),
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(5.h),
      //duration: Duration(microseconds: 1000),
      borderColor: bl,
      borderWidth: 2,
      colorText: wh);
}
