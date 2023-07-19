import 'package:admin/utils/colors.dart';
import 'package:admin/utils/text.dart';
import 'package:admin/view/screens/login/Login/widgets/logbutton.dart';
import 'package:admin/view/screens/login/Login/widgets/logimg.dart';
import 'package:admin/view/screens/login/Login/widgets/textfileds.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final formkey2 = GlobalKey<FormState>();
final TextEditingController pass2 = TextEditingController();
final TextEditingController email2 = TextEditingController();

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bl,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formkey2,
              child: Column(
                children: [
                  ////<-------login animated  image ---------->///
                  logimage(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                                child: alltext(
                                    txt: " ADMIN LOGIN",
                                    col: blu,
                                    siz: 23.sp,
                                    wei: FontWeight.bold,
                                    max: 1)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        ////<-------textform field --------->///
                        log_textfield(
                            "Enter your Email ID",
                            Icons.email,
                            "Please Enter Your Email",
                            email2,
                            TextInputType.emailAddress,
                            "Email"),
                        SizedBox(
                          height: 2.h,
                        ),
                        log_textfield(
                            "Enter your Password",
                            Icons.lock,
                            "Please Enter your passWord",
                            pass2,
                            TextInputType.text,
                            "Password"),
                        Padding(
                          padding: EdgeInsets.only(left: 29.h, bottom: 2.h),
                          child: SizedBox(
                              child: alltext(
                                  txt: "forget password?",
                                  col: re,
                                  siz: 8.sp,
                                  wei: FontWeight.bold,
                                  max: 1)),
                        )
                      ],
                    ),
                  ),
                  ////<-------Login Button--------->///

                  newlogbutton(),
                ],
              ),
            ),
          )),
    );
  }
}
