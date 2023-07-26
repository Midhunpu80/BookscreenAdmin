import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/ownerapprovel/widgets/ownerslist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ownerapproval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bl,
        centerTitle: true,
        title: alltext(
            txt: "owner Approvel",
            col: wh,
            siz: 13.sp,
            wei: FontWeight.bold,
            max: 1),
      ),
      body:   Obx(()=>ow.isLoading.value?Center(child: CircularProgressIndicator()):
        SingleChildScrollView(
          child: Column(
            children: [
            
              the_ownerlist(context),
      
            ],
          ),
        ),
      )
    );
  }
}
