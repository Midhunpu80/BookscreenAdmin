// ignore_for_file: non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/userorder/userorder.dart';
import 'package:admin/view/screens/userorder/widgets/bookingsummarydetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

showdetails_order(BuildContext context, {required var index}) {
  final ol = ors.reply.data[index];
  return showDialog(
      barrierColor: bl.withOpacity(0.6),
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h), color: wh),
            height: 60.h,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  alltext(
                      txt: "Details",
                      col: bl,
                      siz: 13.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  alltext(
                      txt:
                          "------------------------------------------------------------------",
                      col: bl,
                      siz: 10.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  detailorder_txt(txt: "No", ans: "${index + 1}"),
                  detailorder_txt(txt: "Id", ans: ol.id),
                  detailorder_txt(txt: "Name", ans: ol.userName),
                  detailorder_txt(txt: "Movie Name", ans: ol.movieName),
                  detailorder_txt(txt: "Theater Name", ans: ol.ownerName),
                  detailorder_txt(txt: "Booking Status", ans: ol.status),
                  detailorder_txt(
                      txt: "Booked Date",
                      ans: ol.date.toString().substring(0, 11)),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: pp),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.verified,
                        color: wh,
                      ),
                      label: alltext(
                          txt: "OK",
                          col: wh,
                          siz: 12.sp,
                          wei: FontWeight.bold,
                          max: 1))
                ],
              ),
            ),
          ),
        );
      });
}

detailorder_txt({required var txt, required var ans}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        alltext(txt: txt, col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1),
        alltext(txt: ans, col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1)
      ],
    ),
  );
}

show_view_order(BuildContext context, {required var index}) {
  return showDialog(
      barrierColor: bl.withOpacity(0.6),
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h), color: wh),
            height: 60.h,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bookingsummary_titlebar(index: index),
                  SizedBox(
                    height: 1.h,
                  ),
                  alltext(
                      txt:
                          "------------------------------------------------------------------------",
                      col: bl,
                      siz: 12.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  bookinsummarydetails(index: index),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: pp),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.verified,
                        color: wh,
                      ),
                      label: alltext(
                          txt: "OK",
                          col: wh,
                          siz: 12.sp,
                          wei: FontWeight.bold,
                          max: 1))
                ],
              ),
            ),
          ),
        );
      });
}

Widget bookingsummary_titlebar({required var index}) {
  return Padding(
    padding: EdgeInsets.only(top: 3.h, left: 2.h),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        alltext(
            txt: "Booking Summury",
            col: bl,
            siz: 12.sp,
            wei: FontWeight.bold,
            max: 1),
        SizedBox(
          height: 1.h,
        ),
        alltext(
            txt: ors.reply.data[index].movieName,
            col: bl,
            siz: 15.sp,
            wei: FontWeight.w200,
            max: 1),
        SizedBox(
          height: 1.h,
        ),
        alltext(
            txt: ors.reply.data[index].userName,
            col: bl,
            siz: 13.sp,
            wei: FontWeight.w300,
            max: 1),
      ],
    ),
  );
}

bookingsummary_order(
    {required var txt,
    required var ans,
    required double siz,
    required double siz2,
    required var wei,
    required var wei2}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        alltext(txt: txt, col: bl, siz: siz.sp, wei: wei, max: 1),
        alltext(txt: ans, col: bl, siz: siz2, wei: wei2, max: 1)
      ],
    ),
  );
}
