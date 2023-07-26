// ignore_for_file: camel_case_types

import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/moviemangement/widgets/addmovies.dart';
import 'package:admin/view/screens/moviemangement/widgets/listmovies.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class moviemanagement extends StatelessWidget {
  const moviemanagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 35.w,
          child: FloatingActionButton(
            onPressed: () {
              addmovie_sheet(context: context);
              print("data");
            },
            backgroundColor: pp,
            child: alltext(
                txt: "Add Movies",
                col: wh,
                siz: 13.sp,
                wei: FontWeight.bold,
                max: 1),
          ),
        ),
      ),
      backgroundColor: gy.withOpacity(0.3),
      appBar: AppBar(
        toolbarHeight: 10.h,
        centerTitle: true,
        title: alltext(
            txt: "Movie List",
            col: wh,
            siz: 15.sp,
            wei: FontWeight.bold,
            max: 1),
        backgroundColor: or,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            list_movies(context),
          ],
        ),
      ),
    );
  }
}
