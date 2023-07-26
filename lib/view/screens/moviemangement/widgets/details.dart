// ignore_for_file: non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

detail_sheet(
    {required BuildContext context,
    var img,
    required var title,
    required relase,
    required lang,
    required var id}) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200.h,
          width: 200.w,
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 23.h,
                width: 55.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          img,
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(1.h),
                    color: bl.withOpacity(0.3)),

                ///  child: Image.network(img,fit: BoxFit.fill,),
              ),

              SizedBox(
                child: alltext(
                    txt: title,
                    col: bl,
                    siz: 14.sp,
                    wei: FontWeight.bold,
                    max: 2),
              ),
              SizedBox(
                height: 1.h,
              ),
              value(txt1: "ID", txt2: id),
              // value(txt1: "TITLE:", txt2: title),
              value(txt1: "Language", txt2: lang),
              value(txt1: "Relasedate:", txt2: relase.toString()),
            ],
          ),
        );
      });
}

Widget value({required var txt1, required var txt2}) {
  return Padding(
    padding: EdgeInsets.only(left: 2.h, right: 2.h),
    child: Column(
      children: [
        table(txt1: txt1, txt2: txt2),
      ],
    ),
  );
}

Widget table({required String txt1, required String txt2}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      alltext(txt: txt1, col: bl, siz: 13.sp, wei: FontWeight.bold, max: 1),
      SizedBox(
          width: 25.w,
          height: 9.h,
          child: Center(
              child: alltext(
                  txt: txt2,
                  col: bl,
                  siz: 13.sp,
                  wei: FontWeight.bold,
                  max: 1)))
    ],
  );
}
