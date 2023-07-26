// ignore_for_file: prefer_const_constructors

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

List<String> us = ["NO", "Name", "phone", "Email"];

viewdetails(
    {required BuildContext context,
    required String no,
    required String nam,
    required String ph,
    required String email}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: alltext(
              txt: "view details",
              col: bl,
              siz: 15.sp,
              wei: FontWeight.bold,
              max: 1),
          iconColor: bl,
          icon: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.cancel)),
          content: Container(
            height: 50.h,
            decoration: BoxDecoration(
                color: bl, borderRadius: BorderRadius.circular(5.h)),
            width: 80.w,
            child: Column(
              children: [
                Row(
                  children: [
                    headings(),
                    SizedBox(
                      height: 44.h,
                      width: 45.w,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          detail(txt: no),
                          detail(txt: nam),
                          detail(txt: ph),
                          detail(txt: email),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

Widget headings() {
  return SizedBox(
    height: 45.h,
    width: 20.w,
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                //  color: bl,
                height: 9.h,
                width: 15.w,
                child: Center(
                  child: alltext(
                      txt: us[index],
                      col: wh,
                      siz: 8.sp,
                      wei: FontWeight.bold,
                      max: 1),
                )),
          );
        }),
  );
}

Widget detail({required var txt}) {
  return alltext(txt: txt, col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1);
}
