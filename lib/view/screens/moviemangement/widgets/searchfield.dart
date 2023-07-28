// ignore_for_file: non_constant_identifier_names

import 'package:admin/service/Admin/movie_management/search.dart';
import 'package:admin/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final ser = Get.put(movie_search_service());
Widget search_textfield(
    {required String hint,
    required IconData ico,
    required String mess,
    required TextEditingController cont,
    required var type,
    required String help}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 9.h,
      width: 20.w,
      child: TextFormField(
        style: TextStyle(color: bl),
        keyboardType: type,
        controller: cont,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  ser.get_search_movielist(query: cont.text.toString());
                },
                icon: Icon(
                  Icons.send,
                  color: gr,
                )),
            helperText: help,
            prefixIconColor: bl,
            filled: true,
            // ignore: sort_child_properties_last
            prefixIcon: Icon(ico),
            fillColor: gy.withOpacity(0.3),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(1.h),
            ),
            hintText: hint,
            hintStyle: TextStyle(color: bl, fontSize: 10.sp)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return mess;
          } else {
            return null;
          }
        },
      ),
    ),
  );
}
