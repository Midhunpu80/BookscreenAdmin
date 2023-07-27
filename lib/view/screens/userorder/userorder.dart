// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:admin/service/Admin/getorders/getorders.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/userorder/widgets/userlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final ors = Get.put(get_userorder_service());

class userorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gy,
      appBar: AppBar(
        toolbarHeight: 10.h,
        backgroundColor: re,
        centerTitle: true,
        title: alltext(
            txt: "User Order",
            col: wh,
            siz: 13.sp,
            wei: FontWeight.bold,
            max: 1),
      ),
      body: Obx(
        () => ors.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    userorderlist(),
                  ],
                ),
              ),
      ),
    );
  }
}
