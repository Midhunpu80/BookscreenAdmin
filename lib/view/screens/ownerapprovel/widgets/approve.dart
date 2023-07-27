// ignore_for_file: non_constant_identifier_names, avoid_single_cascade_in_expression_statements

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/ownerapprovel/ownerapprovel.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/ownerslist.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget approve_button({
  required String id,
  required BuildContext context,
  required var index,
}) {
  return InkWell(
      splashColor: gy,
      onTap: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.WARNING,
          animType: AnimType.BOTTOMSLIDE,
          title: 'Are your Sure',
          desc: 'you giving the Approval to the theater owner',
          btnCancelOnPress: () async {
            ow.getowner_denied(id: id.toString());
            Get.to(() => ownerapproval());
          },
          btnOkOnPress: () async {
            ow.getallowner_approve(id: id.toString());
          },
        )..show();
      },
      child: Container(
        width: 20.h,
        height: 12.h,
        color: blu,
        child: Center(
            child: alltext(
                txt: ow.reply.data[index].status.toString(),
                col: wh,
                siz: 20.sp,
                wei: FontWeight.bold,
                max: 1)),
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
