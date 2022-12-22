import 'package:flutter/material.dart';
import 'package:krapp/providers/auth/auth_provider.dart';
import 'package:provider/provider.dart';
import '../../../utils/size.dart';
import '../widgets/main_buttton.dart';
import 'methods/custom_register_field.dart';
import 'methods/registerPermission.dart';
import 'methods/signup_phone_textfield.dart';

Positioned signUpPage(BuildContext context) {
  return Positioned(
      bottom: getHeight(0, context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          signupPhoneTextField(context),
          SizedBox(
            height: getHeight(20, context),
          ),
          SizedBox(
            width: getWidth(320, context),
            height: getHeight(290, context),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount:
                  context.watch<AuthProvider>().registerFieldsName.length,
              itemBuilder: (context, index) {
                return customRegisterField(context, TextEditingController(),
                    context.watch<AuthProvider>().registerFieldsName[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: getHeight(20, context),
                );
              },
            ),
          ),
          SizedBox(
            height: getHeight(20, context),
          ),
          registerPermissionCheck(context, true),
          registerPermissionCheck(context, false),
          SizedBox(
            height: getHeight(20, context),
          ),
          SizedBox(
              width: getWidth(320, context),
              height: getWidth(50, context),
              child: mainButton(context, () {
                Navigator.pushNamed(context, '/otp');
              }, 'Qeydiyyat')),
        ],
      ));
}
