// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:admin/constants/urls/urls.dart';

class end {
  String signin = "${adminurl}adminlogin";

  String daily_url = "${adminurl}get-dailySails";
  String monthy_url = "${adminurl}get-monthlySails";
  String stutus_url = "${adminurl}get-status";
  String movielist_url = "${adminurl}getMovies";
  String delete_url = "${adminurl}deleteMovie";
  String addmovie_url = "${adminurl}add-movies";
  String getuserurl = "${adminurl}adminuser";
  String blockuser_url = "${adminurl}block-user";
  String unblock_url = "${adminurl}unblock-user";
  String getall_owner_url = "${adminurl}adminowner";
  String owner_approve_url = "${adminurl}ownerApprove";
  String owner_denied_url = "${adminurl}ownerDenied";
  String owner_block_url = "${adminurl}blockOwner";
  String owner_unblock_url = "${adminurl}unblockOwner";
  String user_order_url = "${adminurl}get-allOrders";
  
}
