import 'package:admin/service/Admin/dailysail/dailysail.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/view/screens/Home.dart/home.dart';
import 'package:admin/view/screens/Home.dart/widgets/icon.dart';
import 'package:admin/view/screens/dashboard/dashboard.dart';
import 'package:admin/view/screens/dashboard/widgets/sailstimes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget pages() {
  final sail = Get.put(daily_service());
  return Container(
    height: 80.h,
    width: 100.w,
    margin: const EdgeInsets.all(8),
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.2),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            sail.getdailysail();
            month.getmonthsail();
            Get.to(() => Dashborad());
          },
          child: Card(
            shadowColor: Colors.grey,
            child: Container(
              height: 5.h,
              width: 10.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [iconcard(index), textdata(index)],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 7,
    ),
  );
}
