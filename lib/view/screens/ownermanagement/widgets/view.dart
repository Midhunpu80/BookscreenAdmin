// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

List<String> owner_headers = [
  "No",
  "Name",
  "Email",
  "Phone",
  "AdharId",
  "Theater Licence",

];

class viewM_ownerDetails extends StatelessWidget {
  var no;
  var nam;
  var email;
  var ph;
  var thet;
  var loc;
  var adh;
  var img;
  // ignore: use_key_in_widget_constructors
  viewM_ownerDetails(
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
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: wh,
            )),
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
                    owners_head(),
                    Padding(
                      padding: EdgeInsets.only(top: 21, left: 2.h),
                      child: Column(
                        children: [
                          accesors(txt: no),
                          siz(),
                          accesors(txt: nam),
                          siz(),
                          accesors(txt: email),
                          siz(),
                          accesors(txt: ph),
                          siz(),
                          accesors(txt: adh),
                          siz(),
                          accesors(txt: thet),
                          siz(),
                        
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

Widget owners_head() {
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
                    txt: owner_headers[index],
                    col: wh,
                    siz: 8.sp,
                    wei: FontWeight.bold,
                    max: 2),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return SizedBox();
        },
        itemCount: 6),
  );
}

Widget accesors({required var txt}) {
  return Container(
      height: 6.h,
      width: 50.w,
      color: bl,
      child: Center(
        child:
            alltext(txt: txt, col: wh, siz: 8.sp, wei: FontWeight.bold, max: 1),
      ));
}



Widget siz() {
  return SizedBox(
    height: 2.h,
  );
}

