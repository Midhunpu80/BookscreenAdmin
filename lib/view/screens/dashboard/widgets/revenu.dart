import 'package:admin/service/Admin/dailysail/dailysail.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/Home.dart/widgets/icon.dart';
import 'package:admin/view/screens/dashboard/widgets/sailstimes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final sail = Get.put(daily_service());
List datas = [
  month.reply.data[4].toString(),
  sail.reply?.data.userCount.toString(),
  sail.reply?.data.ownerCount.toString(),
  sail.reply?.data.movieCount.toString(),
  sail.reply?.data.activeCount.toString(),
  sail.reply?.data.expiredCount.toString()
];

Widget revenusatus() {
  return SliverGrid.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.5),
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.all(7),
        height: 2.h,
        width: 10.w,
        decoration: BoxDecoration(
          color: gy.withOpacity(0.3),
          borderRadius: BorderRadius.circular(1.h),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [dahboradicons(index), dashtextdata(index)],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: dashvalue(values: datas[index]),
                ),
              ],
            )
          ],
        ),
      );
    },
    itemCount: datas.length,
  );
}

Widget dahboradicons(var index) {
  List<IconData> ico = [
    Icons.dashboard,
    Icons.movie,
    Icons.person,
    Icons.theaters,
    Icons.verified,
    Icons.shopping_cart,
    Icons.report
  ];

  return Padding(
    padding: EdgeInsets.only(left: 1.h, top: 1.h),
    child: Container(
      height: 7.h,
      width: 15.w,
      decoration: BoxDecoration(
          color: col[index], borderRadius: BorderRadius.circular(1.h)),
      child: Icon(
        ico[index],
        size: 3.h,
      ),
    ),
  );
}

Widget dashtextdata(var index) {
  List<String> datas = [
    "total\n Revenue ",
    "total user",
    "total\n theater",
    "running \nmovies",
    "Active \nbooking",
    "Expired\n Booking",
  ];

  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: SizedBox(
      height: 6.h,
      width: 20.w,
      child: alltext(
          txt: datas[index], col: bl, siz: 12.sp, wei: FontWeight.bold, max: 2),
    ),
  );
}

Widget dashvalue({required var values}) {
  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: SizedBox(
      height: 6.h,
      width: 20.w,
      child: alltext(
          txt: values, col: bl, siz: 12.sp, wei: FontWeight.bold, max: 2),
    ),
  );
}
