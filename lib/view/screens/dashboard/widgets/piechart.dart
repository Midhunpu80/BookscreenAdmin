import 'package:admin/service/Admin/status/status.dart';
import 'package:admin/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sizer/sizer.dart';

Widget piecha() {
  final sta = Get.put(status_service());
  return Obx(
    () => sta.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40.h,
                width: 100.w,
                color: wh,
                child: PieChart(
                  ringStrokeWidth: 4.h,
                  dataMap: {
                    "Booked": sta.reply.data[0].toDouble(),
                    "cancelled": sta.reply.data[1].toDouble(),
                  },
                  chartType: ChartType.ring,
                  colorList: [gr, re],
                ),
              ),
            ),
          ),
  );
}
