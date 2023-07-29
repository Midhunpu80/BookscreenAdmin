// ignore_for_file: non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/userorder/userorder.dart';
import 'package:admin/view/screens/userorder/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

userorderlist() {
  return SizedBox(
    height: 87.h,
    width: 100.w,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Container(
                height: 10.h,
                width: 100.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    userdetaileds(txt: "${index + 1}", col: bl),
                    userdetaileds(txt: ors.reply.data[index].userName, col: bl),
                    userdetaileds(
                        txt: ors.reply.data[index].status.toString(), col: bl.withOpacity(0.3)),
                    view_userdetails_order(context, index: index),
                    view_alldata_orders_movie(context, index: index),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return SizedBox();
        },
        itemCount: ors.reply.data.length),
  );
}

Widget userdetaileds({required String txt, required Color col}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
        child: alltext(
            txt: txt, col: col, siz: 10.sp, wei: FontWeight.bold, max: 1)),
  );
}

view_userdetails_order(BuildContext context, {required var index}) {
  return InkWell(
    splashColor: re,
    onTap: () {
      showdetails_order(context, index: index);
    },
    child: Container(
      height: 5.h,
      width: 10.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: re),
      child: Center(
        child: alltext(
            txt: "details", col: wh, siz: 8.sp, wei: FontWeight.bold, max: 1),
      ),
    ),
  );
}

view_alldata_orders_movie(BuildContext context, {required var index}) {
  return InkWell(
    splashColor: gr,
    onTap: () {
      show_view_order(context, index: index);
    },
    child: Container(
      height: 5.h,
      width: 10.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: gr),
      child: Center(
        child: alltext(
            txt: "view", col: wh, siz: 8.sp, wei: FontWeight.bold, max: 1),
      ),
    ),
  );
}
