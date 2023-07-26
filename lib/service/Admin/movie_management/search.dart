// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable, unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/model/admin/moviemangement/movielistmodel.dart/search10.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class movie_search_service extends GetxController {
  var isLoading = false.obs;

  Search10? reply;
  TextEditingController con = TextEditingController();
  get_search_movielist({required var query}) async {
    try {
      isLoading(true);
      end j = end();
      var urs =
          "https://api.themoviedb.org/3/search/movie?api_key=460e03dc6bd3091d6d11c7b4a1fed2b5&query=$query&page=1";
      final response = await http.get(Uri.parse(urs), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
      });

      if (response.statusCode == 200) {
        var datas = jsonDecode(response.body);
        reply = Search10.fromJson(datas);
        print(
            "-----*****---------${reply?.results[0].title.toString()}----------*****-------");
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

  result() {
    get_search_movielist(query: con.text.toString());
    update();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    con.clear();
  }

  @override
  void onInit() {
    super.onInit();
    result();
    get_search_movielist(query: "");
  }
}
