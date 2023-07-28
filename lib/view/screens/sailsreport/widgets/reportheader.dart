import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

reportheader() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h, right: 1.h),
    child: Card(
      child: Container(
        height: 5.h,
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              1.h,
            ),
            color: wh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            alltext(
                txt: "No", col: bl, siz: 11.sp, wei: FontWeight.bold, max: 1),
            alltext(
                txt: "Theater",
                col: bl,
                siz: 11.sp,
                wei: FontWeight.bold,
                max: 1),
            alltext(
                txt: "Name", col: bl, siz: 11.sp, wei: FontWeight.bold, max: 1),
            alltext(
                txt: "view-details",
                col: bl,
                siz: 11.sp,
                wei: FontWeight.bold,
                max: 1)
          ],
        ),
      ),
    ),
  );
}

reportheadericon() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h, right: 1.h),
    child: Card(
      child: Container(
        height: 5.h,
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              1.h,
            ),
            color: wh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.view_column,
                  color: blu,
                ),
                label: alltext(
                    txt: "Column",
                    col: blu,
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    max: 1)),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down_circle,
                  color: blu,
                ),
                label: alltext(
                    txt: "filters",
                    col: blu,
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    max: 1)),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.density_medium,
                  color: blu,
                ),
                label: alltext(
                    txt: "Density",
                    col: blu,
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    max: 1)),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_downward,
                  color: blu,
                ),
                label: alltext(
                    txt: "Export",
                    col: blu,
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ],
        ),
      ),
    ),
  );
}
