import 'dart:convert';

import 'package:admin/constants/urls/endpoints.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/view/screens/Home.dart/home.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class singnin_admin extends GetxController {
  Future getlogin({required String email, required String password}) async {
    final data = {"password": password, "email": email};
    end s = end();

    try {
      final response = await http.post(Uri.parse(s.signin),
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 201 || response.statusCode == 201) {
        String reply = response.body.toString();

        print("<-------${reply.toString()}------->");
        print("success");

        // ignore: prefer_const_constructors
        Get.to(() => Home());

        Get.snackbar("${reply}sucess", "logined", backgroundColor: blu);
        return reply;
      } else {
        Get.snackbar("${response.body.toString()}failed",
            "incorrct password /and username ",
            backgroundColor: wh);

        print("Failed to get data");
        throw Exception("Failed to get data");
      }
    } catch (e) {
      throw ("$e");
    }
  }
}
