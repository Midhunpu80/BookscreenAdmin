// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/view/screens/usermanagement/usermanagement.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class block_service extends GetxController {
  var istru = false.obs;
  var reply;
  var rep;
  var rec;
  var ret;
  var ist = false.obs;
  RxList<bool> buttonSelections =
      List.generate(use.reply.data.length, (_) => false).obs;

  void toggleButtonSelection(int index) {
    buttonSelections[index] = !buttonSelections[index];
  }

  getblock({required var id}) async {
    final bdy = {"userId": id};
    try {
      end j = end();
      final response = await http.post(Uri.parse(j.blockuser_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        reply = jsonDecode(response.body);
        rep = reply['success'];

        istru(true);

        print(reply);
        // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");

        update();

        return reply;
      } else {
        istru(false);
        print("failed");

        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("Failed");
    }
  }

  get_un_block({required var id}) async {
    final bdy = {"userId": id};
    try {
      end j = end();
      final response = await http.post(Uri.parse(j.unblock_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        rec = jsonDecode(response.body);
        ret = rec['success'];

        istru(true);

        print(rec);
        // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");

        update();

        return reply;
      } else {
        istru(false);
        print("failed");

        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("Failed");
    }
  }

  @override
  void onInit() {
    super.onInit();
    getblock(id: '');
    get_un_block(id: '');
  }
}
