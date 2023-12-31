// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/ownerslist.dart';
import 'package:admin/view/screens/ownermanagement/ownermanagement.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ownerapproval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: wh,
              )),
          backgroundColor: bl,
          centerTitle: true,
          title: alltext(
              txt: "owner Approvel",
              col: wh,
              siz: 13.sp,
              wei: FontWeight.bold,
              max: 1),
        ),
        body: Obx(
          // ignore: unnecessary_null_comparison
          () => og.isLoading.value || og.reply.data == null
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      the_ownerlist(context),
                    ],
                  ),
                ),
        ));
  }
}
