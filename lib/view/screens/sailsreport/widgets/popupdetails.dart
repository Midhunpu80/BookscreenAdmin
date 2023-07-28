// ignore_for_file: non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';

import 'package:admin/view/screens/sailsreport/sailsreport.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

reportsdetails_popup({required BuildContext context, required var index}) {
  return showDialog(
      barrierColor: bl.withOpacity(0.3),
      context: context,
      builder: (context) {
        final j = rp.reply.data[index];
        return Dialog(
          child: Container(
            height: 50.h,
            width: 200.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.h), color: wh),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  reportcomplete_details(tit: "No", ans: "${index + 1}"),
                  reportcomplete_details(tit: "Theater", ans: j.ownerName),
                  reportcomplete_details(tit: "Name", ans: j.userName),
                  reportcomplete_details(tit: "Movie", ans: j.movieName),
                  reportcomplete_details(
                      tit: "Date", ans: j.date.toString().substring(0, 11)),
                  reportcomplete_details(
                      tit: "time", ans: j.showTime.toString()),
                  reportcomplete_details(
                      tit: "screen no", ans: j.screen.toString()),
                  seats(
                      tit: j.selectedSeats.map((e) => e.id),
                      one: "tei",
                      inder: index,
                      len: j.selectedSeats.length),
                  reportcomplete_details(tit: "total", ans: j.total.toString()),
                ],
              ),
            ),
          ),
        );
      });
}

Widget reportcomplete_details({required var tit, required var ans}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        alltext(txt: tit, col: bl, siz: 11.sp, wei: FontWeight.w500, max: 1),
        alltext(txt: ans, col: bl, siz: 11.sp, wei: FontWeight.w500, max: 1)
      ],
    ),
  );
}

Widget seats(
    {required var tit,
    required var one,
    required var inder,
    required var len}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        alltext(
            txt: "Seats", col: bl, siz: 11.sp, wei: FontWeight.bold, max: 1),
        // ignore: sized_box_for_whitespace
        Container(
          height: 4.h,
          width: 18.w,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 1, right: 5),
                    child: alltext(
                        txt: tit.toString(),
                        col: bl,
                        siz: 11.sp,
                        wei: FontWeight.bold,
                        max: 1));
              },
              itemCount: len),
        ),
      ],
    ),
  );
}
