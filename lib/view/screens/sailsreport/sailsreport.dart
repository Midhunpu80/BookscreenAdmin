// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:admin/service/Admin/getorders/getorders.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/sailsreport/widgets/listofuser.dart';
import 'package:admin/view/screens/sailsreport/widgets/reportheader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final rp = Get.put(get_userorder_service());

class sailsReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wh.withOpacity(0.3),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: wh,
                ))
          ],
          toolbarHeight: 10.h,
          backgroundColor: re,
          centerTitle: true,
          title: alltext(
              txt: "Sails Report",
              col: wh,
              siz: 12.sp,
              wei: FontWeight.bold,
              max: 1),
        ),
        body: Obx(
          () => rp.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      reportheadericon(),
                      reportheader(),
                      listofusers(),
                    ],
                  ),
                ),
        ));
  }
}
