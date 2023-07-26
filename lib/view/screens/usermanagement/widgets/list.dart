// ignore_for_file: invalid_use_of_protected_member

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/usermanagement/usermanagement.dart';
import 'package:admin/view/screens/usermanagement/widgets/blockdialog.dart';
import 'package:admin/view/screens/usermanagement/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget theuserlist(BuildContext context) {
  return Container(
    height: 89.h,
    width: 100.w,
    color: wh,
    child: ListView.separated(
        itemBuilder: (context, index) {
          final sat = use.reply.data[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: gy,
              child: SizedBox(
                  height: 10.h,
                  width: 10.w,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 100.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.h),
                              color: bl),
                          child: Center(
                              child: alltext(
                                  txt: "${index + 1}",
                                  col: wh,
                                  siz: 12.sp,
                                  wei: FontWeight.bold,
                                  max: 1))),
                    ),
                    title: alltext(
                        txt: use.reply.data[index].signName,
                        col: bl,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: Row(
                          children: [
                            viewbutton(
                                context: context,
                                no: "${index + 1}",
                                nam: sat.signName,
                                ph: sat.signPhone.toString(),
                                email: sat.signEmail.toString()),
                            SizedBox(
                              width: 5.w,
                            ),
                            blockbutton(
                                id: sat.id, context: context, index: index)
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: gy,
            thickness: 1,
          );
        },
        itemCount: use.reply.data.length),
  );
}

Widget viewbutton(
    {required BuildContext context,
    required String no,
    required String nam,
    required String ph,
    required String email}) {
  return InkWell(
    splashColor: bl,
    onTap: () {
      viewdetails(context: context, no: no, nam: nam, ph: ph, email: email);
      // ignore: avoid_print
      print("view");
    },
    child: Container(
      width: 20.h,
      height: 12.h,
      color: gr,
      child: Center(
          child: alltext(
              txt: "View", col: wh, siz: 22.sp, wei: FontWeight.bold, max: 1)),
    ),
  );
}
