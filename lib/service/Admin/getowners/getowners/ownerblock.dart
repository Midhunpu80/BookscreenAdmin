// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/constants/urls/token.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/ownerslist.dart';
import 'package:admin/view/screens/ownermanagement/ownermanagement.dart';
import 'package:admin/view/screens/ownermanagement/widgets/block_owner.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class owner_block_service extends GetxController {
  var isLoading = false.obs;

  //<----------------------------------button selection--------------------------------->///

  RxList<bool> buttonSelections =
      List.generate(of.reply.data.length, (_) => false).obs;

  void toggleButtonSelection(int index) {
    buttonSelections[index] = !buttonSelections[index];
  }

  getallowner_block({required String id}) async {
    final bdy = {"ownerId": id.toString()};
    try {
      isLoading(true);
      end j = end();
      final response = await http.post(Uri.parse(j.owner_block_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        var rep = jsonDecode(response.body);
        print(rep);
        // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");

        update();
        isLoading(false);
        return rep;
      } else {
        print("failed");
        isLoading(false);
        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("unblock Failed");
    }
  }

////<---------------------------getallowner unblock ---------------------------------------->
  getallowner_unblock({required String id}) async {
    final bdy = {"ownerId": id.toString()};
    try {
      isLoading(true);
      end j = end();
      final response = await http.post(Uri.parse(j.owner_unblock_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        var rep = jsonDecode(response.body);
        print(rep);
        // "<---movies----${reply.data.map((e) => e.movieId).toList().toString()}------->");

        update();
        isLoading(false);
        return rep;
      } else {
        print("failed");
        isLoading(false);
        throw Exception("unblock Failed");
      }
    } catch (e) {
      throw Exception("Failed");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getallowner_block(id: "");
    getallowner_unblock(id: "");
  }
}
