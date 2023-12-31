// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:admin/constants/dialog/awsomedialog.dart';
import 'package:admin/service/Admin/movie_management/deletemovie.dart';
import 'package:admin/service/Admin/movie_management/moviemangeservice.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/moviemangement/widgets/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

// ignore: non_constant_identifier_names
Widget list_movies(BuildContext context) {
  final list = Get.put(movie_manage_service());
  final ss = Get.put(movie_delete_service());
  return Obx(
    () => list.isLoading.value
        ? Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: const Center(child: CircularProgressIndicator()),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: gy,
              child: SizedBox(
               
                  height: 80.h,
                  width: 100.w,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        final j = list.reply.data[index];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shadowColor: bl,
                            child: SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: ListTile(
                                splashColor: gr,
                                selected: false,
                                selectedColor: gr,
                                onTap: () {
                                  detail_sheet(
                                      img:
                                          "https://image.tmdb.org/t/p/original/${j.image.toString()}",
                                      context: context,
                                      title: j.title,
                                      id: j.movieId.toString(),
                                      relase: j.releaseDate,
                                      lang: j.language.toString());
                                  // ignore: avoid_print
                                  print("$index");
                                },
                                trailing: IconButton(
                                  onPressed: () {
                                    //   ss.get_Delete_movielist(ids: j.id);
                                    awsome(context, index);
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: re,
                                  ),
                                ),
                                title: alltext(
                                    txt: j.title,
                                    col: bl,
                                    siz: 10.sp,
                                    wei: FontWeight.bold,
                                    max: 1),
                                leading: FittedBox(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: alltext(
                                            txt: "${index + 1}",
                                            col: wh,
                                            siz: 150.sp,
                                            wei: FontWeight.bold,
                                            max: 1),
                                        backgroundColor: gr,
                                        radius: 25.h,
                                      ),
                                      VerticalDivider(
                                        color: gr,
                                        thickness: 5,
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.h),
                                        child: Container(
                                          height: 100.h,
                                          width: 350.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(1.h),
                                              color: bl.withOpacity(0.3)),
                                          child: Image.network(
                                            "https://image.tmdb.org/t/p/original/${j.image.toString()}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 1,
                        );
                      },
                      itemCount: list.reply.data.length)),
            ),
          ),
  );
}
