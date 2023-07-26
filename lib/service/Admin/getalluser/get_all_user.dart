// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/model/admin/getalluser/getalluser.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class getalluser_service extends GetxController {
  var isLoading = false.obs;

  late Getalluser10 reply;
  getalluser() async {
    try {
      isLoading(true);
      end j = end();
      final response = await http.get(Uri.parse(j.getuserurl), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
      'Authorization': 'Bearer $token'
      });

      if (response.statusCode == 200) {
        reply = getalluser10FromJson(response.body.toString());
        print(reply.data.toString());
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
    getalluser();
  }
}
