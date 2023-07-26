import 'package:admin/service/Admin/getalluser/blockuser/blockuser.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget blockbutton({
  required String id,
  required BuildContext context,
  required var index,
}) {
  final bk = Get.put(block_service());

  return InkWell(
      onTap: () {
        bk.toggleButtonSelection(index);
        if (bk.buttonSelections[index]) {
          bk.getblock(id: id);
          // ignore: avoid_print
          block_messege(tit: "Blocked", mess: "user blocked", col: gr);
          // ignore: avoid_print
          print("blocked the user");
        } else {
          bk.get_un_block(id: id);
          block_messege(tit: "Unblock", mess: "user unblocked", col: blu);

          // ignore: avoid_print
          print("user unblocked");
        }
      },
      child: Obx(
        () => Container(
            width: 20.h,
            height: 12.h,
            color: bk.buttonSelections[index] ? blu : re,
            child: Obx(
              () => Center(
                  child: alltext(
                      txt: bk.buttonSelections[index] ? "Unblock" : "Block",
                      col: wh,
                      siz: 20.sp,
                      wei: FontWeight.bold,
                      max: 1)),
            )),
      ));
}

// ignore: non_constant_identifier_names
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
