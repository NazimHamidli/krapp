import 'package:flutter/material.dart';

import '../../providers/auth/auth_provider.dart';
import '../../utils/size.dart';
import '../widgets/main_buttton.dart';
import '../widgets/register_button.dart';
import 'methods/forgor_pass_button.dart';
import 'methods/login_privacy.dart';
import 'methods/phone_number_field.dart';
import 'package:provider/provider.dart';

Positioned loginPage(BuildContext context) {
  return Positioned(
      bottom: getHeight(0, context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          phoneNumberField(context),
          SizedBox(
            height: getHeight(20, context),
          ),
          SizedBox(
              width: getWidth(320, context),
              height: getWidth(50, context),
              child: mainButton(context, () {}, 'Login')),
          SizedBox(
            height: getHeight(20, context),
          ),
          registerButton(context, () {
            context.read<AuthProvider>().changeStatusValue(1);
          }),
          SizedBox(
            height: getHeight(20, context),
          ),
          forgotPassButton(context),
          MediaQuery.of(context).viewInsets.bottom == 0
              ? SizedBox(
                  height: getHeight(130, context),
                )
              : const SizedBox(),
          MediaQuery.of(context).viewInsets.bottom == 0
              ? loginPrivacy()
              : const SizedBox()
        ],
      ));
}
