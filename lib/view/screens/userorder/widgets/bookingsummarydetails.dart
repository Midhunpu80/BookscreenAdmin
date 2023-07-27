import 'package:admin/view/screens/userorder/userorder.dart';
import 'package:admin/view/screens/userorder/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget bookinsummarydetails({required var index}) {
  final oe = ors.reply.data[index];

  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        bookingsummary_order(
            txt: "Theater Name",
            ans: oe.ownerName.toString(),
            siz: 6.sp,
            siz2: 6.sp,
            wei: FontWeight.bold,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Screen",
            ans: oe.screen.toString(),
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Ticket Qyt",
            ans: oe.bookingId,
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Seats",
            ans: oe.selectedSeats[0].id.toString(),
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Date",
            ans: oe.date.toString().substring(0, 11),
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Bookiing Id",
            ans: oe.bookingId.toString(),
            siz: 6.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Sub Total",
            ans: "₹ ${oe.subtotal.toString()}",
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w300,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "convice fees",
            ans: "₹ ${oe.fee.toString()}",
            siz: 5.sp,
            siz2: 6.sp,
            wei: FontWeight.w400,
            wei2: FontWeight.w300),
        bookingsummary_order(
            txt: "Total",
            ans: "₹ ${oe.total.toString()}",
            siz: 7.sp,
            siz2: 6.sp,
            wei: FontWeight.bold,
            wei2: FontWeight.w300),
      ],
    ),
  );
}
