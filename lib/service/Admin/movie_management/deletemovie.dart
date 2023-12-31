// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable, unnecessary_brace_in_string_interps, non_constant_identifier_names, use_build_context_synchronously

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/view/screens/ownermanagement/widgets/block_owner.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;


class movie_delete_service extends GetxController {
  var isLoading = false.obs;

  //late Movielist10 reply;
  get_Delete_movielist(
      {required String ids,  BuildContext? context} ) async {
    final bdy = {"movieId": ids};
    try {
      isLoading(true);
      end j = end();
      final response = await http.post(Uri.parse(j.delete_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        var reply = jsonDecode(response.body);

        print("-----*****---------${reply}----------*****-------");
        blockawsome(context!,
            tit: "Movie Deleted",
            dex: "${reply["message"]}",
            type: DialogType.SUCCES);
        // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");

        update();
        isLoading(false);
        return reply;
      } else {
        print("failed");
        isLoading(false);
        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("Failed");
    }
  }

  @override
  void onInit() {
    super.onInit();
    get_Delete_movielist(ids: "",);
    update();
  }

  @override
  void dispose() {
    super.dispose();
    get_Delete_movielist(ids: "");
  }
}
