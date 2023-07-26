import 'package:admin/service/Admin/getalluser/get_all_user.dart';
import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/usermanagement/widgets/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final use = Get.put(getalluser_service());

class usermanagement extends StatelessWidget {
  // const moviemanagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        backgroundColor: re,
        centerTitle: true,
        title: alltext(
            txt: "UserList", col: wh, siz: 15.sp, wei: FontWeight.bold, max: 1),
      ),
      // ignore: prefer_const_constructors
      body: Obx(
        () => use.isLoading.value
            ? const  Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [theuserlist(context)],
                ),
              ),
      ),
    );
  }
}
