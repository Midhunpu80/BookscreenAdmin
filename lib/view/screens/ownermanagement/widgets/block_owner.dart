// ignore_for_file: non_constant_identifier_names, avoid_single_cascade_in_expression_statements, use_build_context_synchronously

import 'package:admin/service/Admin/getowners/getowners/getowners.dart';
import 'package:admin/service/Admin/getowners/getowners/ownerblock.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final ows = Get.put(owner_block_service());
final of = Get.put(getallowner_service());

Widget blocked_owner_button({
  required String id,
  required BuildContext context,
  required var index,
}) {
  return InkWell(
      splashColor: gy,
      onTap: () async {
        ows.toggleButtonSelection(index);
        if (ows.buttonSelections[index]) {
          await ows.getallowner_block(id: id);
          blockawsome(context,
              tit: "Blocked",
              dex: "the user bloceked sucessfully",
              type: DialogType.WARNING);
        } else {
          await ows.getallowner_unblock(id: id);
          blockawsome(context,
              tit: "Unblocked",
              dex: "the user Unblocked sucessfully",
              type: DialogType.SUCCES);
        }
      },
      child: Obx(
        () => Container(
          width: 20.h,
          height: 12.h,
          color: ows.buttonSelections[index] ? blu : re,
          child: Obx(
            () => ows.isLoading.value
                ? Center(
                    child: alltext(
                        txt: ows.buttonSelections[index] ? "Unblock" : "Block",
                        col: wh,
                        siz: 20.sp,
                        wei: FontWeight.bold,
                        max: 1))
                : Center(
                    child: alltext(
                        txt: ows.buttonSelections[index] ? "Unblock" : "Block",
                        col: wh,
                        siz: 20.sp,
                        wei: FontWeight.bold,
                        max: 1)),
          ),
        ),
      ));
}

block_messege({required var tit, required var mess, required Color col}) {
  Get.snackbar(tit, mess,
      backgroundColor: col,
      maxWidth: 20.h,
      //padding: EdgeInsets.all(5.h),
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(5.h),
      //duration: Duration(microseconds: 1000),
      borderColor: bl,
      borderWidth: 2,
      colorText: wh);
}

blockawsome(BuildContext context,
    {required var tit, required var dex, required var type}) {
  return AwesomeDialog(
    context: context,
    dialogType: type,
    animType: AnimType.BOTTOMSLIDE,
    title: tit,
    desc: dex,
  )..show();
}
