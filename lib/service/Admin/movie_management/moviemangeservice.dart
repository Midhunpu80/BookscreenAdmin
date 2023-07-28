// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/model/admin/moviemangement/movielistmodel.dart/movielist.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class movie_manage_service extends GetxController {
  var isLoading = false.obs;

  late Movielist10 reply;

  RxMap<String, dynamic> dat = RxMap<String, dynamic>({});
  RxList<dynamic> tit = [].obs;
  RxList<dynamic> pos = [].obs;

  getmovielist() async {
    try {
      isLoading(true);
      end j = end();
      final response = await http.get(Uri.parse(j.movielist_url), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        reply = Movielist10.fromJson(data);
        print(reply.data.toString());
        tit.addAll(reply.data.map((e) => e.title).toList());
        pos.addAll(reply.data.map((e) => e..image).toList());

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

  // updation() {
  //   // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");
  //   dat["tit"] = reply.data.map((e) => e.title).toList();
  //   dat["img"] = reply.data.map((e) => e.image.toString()).toList();
  //   update();
  // }

  @override
  void onInit() {
    super.onInit();
    getmovielist();
  }
}
