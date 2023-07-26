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
                search_textfield(
                    hint: "search your fav movies",
                    ico: Icons.search,
                    mess: "rnter that",
                    cont: ser.con,
                    type: TextInputType.text,
                    help: "search"),
                Obx(
                  () {
                    if (ser.isLoading.value) {
                      return Center(
                        child: alltext(
                            txt: "search your favorite movies",
                            col: bl,
                            siz: 12.sp,
                            wei: FontWeight.bold,
                            max: 1),
                      );
                    } else if (ser.reply!.results.isEmpty) {
                      return alltext(
                          txt: "is empty",
                          col: bl,
                          siz: 15.sp,
                          wei: FontWeight.bold,
                          max: 1);
                    } else {
                      return SizedBox(
                        height: 90.h,
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
                                        icon: ad.isLoading.value
                                            ? Icon(
                                                Icons.add,
                                                color: blu,
                                              )
                                            : Icon(
                                                Icons.cancel,
                                                color: bl,
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
                )
              ],
            ),
          ),
        );
      });
}
