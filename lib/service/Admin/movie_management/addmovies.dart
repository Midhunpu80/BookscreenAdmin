// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable, unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class movie_add_service extends GetxController {
  var isLoading = false.obs;

  //late Movielist10 reply;
  get_add_movielist(
      {required var id,
      required var tit,
      required var lang,
      required var rel,
      required var img}) async {
    final bdy = {
      "movieDetails": {
        "id": id,
        "title": tit,
        "original_language": lang,
        "release_date": rel,
        "poster_path": img,
      },
    };
    try {
      isLoading(true);
      end j = end();
      final response = await http.post(Uri.parse(j.addmovie_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        var reply = jsonDecode(response.body);

        print("-----*****---------${reply}----------*****-------");
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
    get_add_movielist(id: "", tit: "", lang: "", rel: "", img: "");
  }
}
