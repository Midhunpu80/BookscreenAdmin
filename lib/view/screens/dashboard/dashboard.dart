import 'package:admin/utils/colors.dart';
import 'package:admin/view/screens/dashboard/widgets/appbar.dart';
import 'package:admin/view/screens/dashboard/widgets/revenu.dart';
import 'package:admin/view/screens/dashboard/widgets/sailstimes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashborad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Obx(()=>month.isLoading.value? const Center(child: CircularProgressIndicator()):
         CustomScrollView(slivers: [
          appbar(),
          sailstime(),
          revenusatus(),
      
        ]),
      ),
    );
  }
}
