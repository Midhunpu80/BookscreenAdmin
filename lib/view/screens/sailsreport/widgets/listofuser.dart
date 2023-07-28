// ignore_for_file: prefer_const_constructors

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/sailsreport/sailsreport.dart';
import 'package:admin/view/screens/sailsreport/widgets/popupdetails.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget listofusers() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h, right: 1.h),
    child: Card(
      child: Container(
        height: 70.h,
        width: 200.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.h,
            ),
            color: wh),
        child: ListView.separated(
            itemBuilder: (context, index) {
              final ins = rp.reply.data[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 10.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                      color: wh),
                  child: allreportdetails(
                      context: context,
                      index: index,
                      nam: ins.userName,
                      the: ins.ownerName.toString()),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: rp.reply.data.length),
      ),
    ),
  );
}

Widget allreportdetails(
    {required var index,
    required var the,
    required var nam,
    required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      alltext(
          txt: "${index + 1}",
          col: bl,
          siz: 11.sp,
          wei: FontWeight.bold,
          max: 1),
      alltext(txt: the, col: bl, siz: 11.sp, wei: FontWeight.bold, max: 1),
      alltext(txt: nam, col: bl, siz: 11.sp, wei: FontWeight.bold, max: 1),
      sailreportview(context: context, index: index)
    ],
  );
}

Widget sailreportview({required BuildContext context, required var index}) {
  return InkWell(
    splashColor: re,
    onTap: () {
      reportsdetails_popup(index: index, context: context);
    },
    child: Container(
      height: 4.h,
      width: 17.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: gr),
      child: Center(
        child: alltext(
            txt: "View", col: wh, siz: 8.sp, wei: FontWeight.bold, max: 1),
      ),
    ),
  );
}
