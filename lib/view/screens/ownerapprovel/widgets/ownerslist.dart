// ignore_for_file: invalid_use_of_protected_member, non_constant_identifier_names

import 'package:admin/service/Admin/getowners/getowners/getowners.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/approve.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

final ow = Get.put(getallowner_service());

Widget the_ownerlist(BuildContext context) {
  return Container(
    height: 89.h,
    width: 100.w,
    color: wh,
    child: ListView.separated(
        itemBuilder: (context, index) {
          final os = ow.reply.data[index];
          //  final sat = use.reply.data[index];
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
                              color: blu),
                          child: Center(
                              child: alltext(
                                  txt: "${index + 1}",
                                  col: wh,
                                  siz: 12.sp,
                                  wei: FontWeight.bold,
                                  max: 1))),
                    ),
                    title: alltext(
                        txt: ow.reply.data[index].name.toString(),
                        col: bl,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: Row(
                          children: [
                            owner_viewbutton(
                              img: os.images.toString(),
                                context: context,
                                no: os.id,
                                nam: os.name,
                                ph: os.phone.toString(),
                                email: os.email,
                                thet: os.licence.toString(),
                                loc: os.location.toString(),
                                adh: os.adhaar.toString()),
                            SizedBox(
                              width: 5.w,
                            ),
                            approve_button(
                                id: "", context: context, index: index)
                            // blockbutton(id: "", context: context, index: 0)
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
        itemCount: ow.reply.data.length),
  );
}

Widget owner_viewbutton(
    {required BuildContext context,
    required String no,
    required String nam,
    required String ph,
    required String email,
    required String thet,
    required String loc,
    required String adh,required var img}) {
  return InkWell(
    splashColor: bl,
    onTap: () {
      Get.to(() => view_ownerDetails(
          no: no,
          nam: nam,
          email: email,
          ph: ph,
          thet: thet,
          loc: loc,
          adh: adh,img:img ,));

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
