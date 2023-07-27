// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:admin/service/Admin/getowners/getowners/getowners.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/ownermanagement/widgets/ownerslist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final og = Get.put(getallowner_service());

class ownermanagement extends StatelessWidget {
  final con = Get.put(getallowner_service());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bl,
        appBar: AppBar(
          toolbarHeight: 10.h,
          title: alltext(
              txt: "Owner Mangement",
              col: wh,
              siz: 14.sp,
              wei: FontWeight.bold,
              max: 1),
          backgroundColor: re,
          centerTitle: true,
        ),
        // ignore: prefer_const_constructors
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => con.isLoading.value || con.reply.data.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : manage_ownerlist(context),
              ),
            ],
          ),
        ));
  }
}
