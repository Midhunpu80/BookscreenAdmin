// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/model/admin/getoder10/getordermodel.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

dynamic jwt;

class get_userorder_service extends GetxController {
  var isLoading = false.obs;

  late Getorders10 reply;

  RxMap<String, dynamic> dat = RxMap<String, dynamic>({});
  RxList<dynamic> da = RxList<dynamic>();

  getuserorder() async {
    try {
      isLoading(true);
      end j = end();
      final response = await http.get(Uri.parse(j.user_order_url), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        reply = Getorders10.fromJson(data);
        da.add(reply.data.map((e) =>
            e.selectedSeats.toList().toString()));
        print(da);

        ///  dat({"one": reply.data.map((e) => e.name)});
        print(
            "<--------------------------${reply.data.map((e) => e.userName)}------------------------------------>");
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
      throw Exception("Failed$e");
    }
  }

  @override
  void onInit() {
    super.onInit();
    getuserorder();
  }
}
