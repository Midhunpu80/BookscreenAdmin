import 'package:admin/service/Admin/movie_management/deletemovie.dart';
import 'package:admin/service/Admin/movie_management/moviemangeservice.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';

awsome(BuildContext context, var index) {
  final delete = Get.put(movie_delete_service());
  final list = Get.put(movie_manage_service());
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.ERROR,
    animType: AnimType.BOTTOMSLIDE,
    title: 'Delete',
    desc: 'if you sure to delete this',
    btnCancelOnPress: () {
      Get.back();
    },
    btnOkOnPress: () async {
      await delete.get_Delete_movielist(
          id: list.reply.data[index].movieId.toString(),
          ids: list.reply.data[index].id.toString());
    },
  )..show();
}
