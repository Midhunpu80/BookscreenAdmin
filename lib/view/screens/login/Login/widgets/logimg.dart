// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
////<-------ANimated image --------->///
Widget logimage() {
  // ignore: unused_local_variable
  var h;
  return SizedBox(
    height: 38.h,
    width: 100.w,
    child: Image.network("https://ichef.bbci.co.uk/news/976/cpsprodpb/4BD0/production/_128080491_elon_musk_getty.jpg",fit: BoxFit.cover,),
  );
}
