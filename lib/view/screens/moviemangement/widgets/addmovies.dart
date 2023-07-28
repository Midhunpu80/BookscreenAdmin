// ignore_for_file: non_constant_identifier_names

import 'package:admin/service/Admin/movie_management/addmovies.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/moviemangement/widgets/searchfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

TextEditingController controller = TextEditingController();
final ad = Get.put(movie_add_service());

addmovie_sheet({
  required BuildContext context,
}) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 400.h,
          width: 200.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: search_textfield(
                          hint: "search your fav movies",
                          ico: Icons.search,
                          mess: "rnter that",
                          cont: ser.con,
                          type: TextInputType.text,
                          help: "search"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SizedBox(
                        height: 5.h,
                        width: 14.w,
                        child: IconButton(
                          onPressed: () {
                            ser.con.clear();
                            ser.reply!.results.clear();
                            Get.back();
                          },
                          icon: Icon(
                            Icons.close,
                            color: blu,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Obx(
                  () {
                    if (ser.isLoading.value) {
                      return Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Center(
                          child: alltext(
                              txt: "search your favorite movies",
                              col: bl,
                              siz: 12.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      );
                      // } else if (ser.isLoading.value) {
                      //   return const  Center(child: CircularProgressIndicator());
                    } else {
                      return SizedBox(
                        height: 80.h,
                        width: 100.w,
                        child: ListView.builder(
                            itemCount: ser.reply?.results.length,
                            itemBuilder: (context, index) {
                              final data = ser.reply?.results[index];
                              return SizedBox(
                                  height: 10.h,
                                  child: ListTile(
                                    trailing: IconButton(
                                        onPressed: () {
                                          ad.get_add_movielist(
                                              id: data?.id.toString(),
                                              tit: data?.title,
                                              lang: data?.originalLanguage,
                                              rel: data?.releaseDate.toString(),
                                              img: data?.posterPath.toString());
                                          Get.back();
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: blu,
                                        )),
                                    leading: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        // ignore: sort_child_properties_last
                                        child: Image.network(
                                          "https://image.tmdb.org/t/p/original/${ser.reply?.results[index].posterPath.toString()}",
                                          fit: BoxFit.cover,
                                        ),
                                        height: 150.h,
                                        width: 10.w,
                                      ),
                                    ),
                                    title: alltext(
                                        txt: ser.reply?.results[index].title
                                            .toString(),
                                        col: bl,
                                        siz: 10.sp,
                                        wei: FontWeight.bold,
                                        max: 1),
                                  ));
                            }),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      });
}
