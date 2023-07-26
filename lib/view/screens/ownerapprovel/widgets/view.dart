// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

List<String> owner_header = [
  "No",
  "Name",
  "Email",
  "Phone",
  "AdharId",
  "Theater Licence",
  "Location",
  "Id Proof"
];

class view_ownerDetails extends StatelessWidget {
  var no;
  var nam;
  var email;
  var ph;
  var thet;
  var loc;
  var adh;
  var img;
  // ignore: use_key_in_widget_constructors
  view_ownerDetails(
      {required this.no,
      required this.nam,
      required this.email,
      required this.ph,
      required this.thet,
      required this.loc,
      required this.adh,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gy,
      appBar: AppBar(
        toolbarHeight: 10.h,
        backgroundColor: bl,
        centerTitle: true,
        title: alltext(
            txt: "Owner details ",
            col: wh,
            siz: 13.sp,
            wei: FontWeight.bold,
            max: 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: wh,
              child: Container(
                height: 80.h,
                width: 100.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.h)),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    owner_head(),
                    Padding(
                      padding: EdgeInsets.only(top: 21, left: 2.h),
                      child: Column(
                        children: [
                          accesor(txt: no),
                          siz(),
                          accesor(txt: nam),
                          siz(),
                          accesor(txt: email),
                          siz(),
                          accesor(txt: ph),
                          siz(),
                          accesor(txt: adh),
                          siz(),
                          accesor(txt: thet),
                          siz(),
                          accesor(txt: loc),
                          siz(),
                          adharid(img: img, context: context),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget owner_head() {
  return Container(
    height: 100.h,
    width: 30.w,
    color: bl,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 6.h,
              width: 20.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(width: 0.h, color: bl)),
              child: Center(
                child: alltext(
                    txt: owner_header[index],
                    col: wh,
                    siz: 8.sp,
                    wei: FontWeight.bold,
                    max: 2),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: 8),
  );
}

Widget accesor({required var txt}) {
  return Container(
      height: 6.h,
      width: 50.w,
      color: bl,
      child: Center(
        child:
            alltext(txt: txt, col: wh, siz: 8.sp, wei: FontWeight.bold, max: 1),
      ));
}

Widget adharid({required var img, required BuildContext context}) {
  return InkWell(
    onTap: () {
      showimg(context, img);
    },
    child: Container(
      height: 9.h,
      width: 20.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1.h),
          image: DecorationImage(image: NetworkImage(img))),
    ),
  );
}

Widget siz() {
  return SizedBox(
    height: 2.h,
  );
}

showimg(BuildContext context, var img) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: alltext(
                    txt: "Back",
                    col: re,
                    siz: 12.sp,
                    wei: FontWeight.bold,
                    max: 1))
          ],
          content: Container(
            height: 40.h,
            width: 150.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.fill)),
          ),
        );
      });
}
