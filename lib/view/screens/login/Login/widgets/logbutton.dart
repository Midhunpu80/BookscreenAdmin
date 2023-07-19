import 'package:admin/service/Admin/singin.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/login/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:sizer/sizer.dart';

////<-------Login Button--------->///
Widget newlogbutton() {
  final log = Get.put(singnin_admin());
  // ignore: unused_local_variable

  return SizedBox(
    height: 7.h,
    width: 70.w,
    child: ElevatedButton.icon(
      onPressed: () async {
        if (formkey2.currentState!.validate()) {
          log.getlogin(email: email2.text, password:pass2.text);
        } else {
          // ignore: avoid_print
          print("data");
        }
      },
      icon: const Icon(
        Icons.login,
        color: Colors.transparent,
      ),
      label: alltext(
          txt: "Login", col: wh, siz: 14.sp, wei: FontWeight.bold, max: 1),
      style: ElevatedButton.styleFrom(backgroundColor: blu),
    ),
  );
}
