import 'package:flutter/material.dart';
import 'package:krapp/view/widgets/main_buttton.dart';

import '../../../utils/size.dart';

import '../methods/login_privacy.dart';
import 'back_button.dart';
import 'forgot_pass_field.dart';

Positioned forgotPass(BuildContext context) {
  return Positioned(
      bottom: getHeight(0, context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Qeydiyyatda göstərdiyiniz nömrəyə yeni şifrə üçün təlimat gələcək',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          forgotPassField(context),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: getWidth(320, context),
              height: getWidth(50, context),
              child: mainButton(context, () {}, 'Göndər')),
          const SizedBox(
            height: 20,
          ),
          backButton(context),
          MediaQuery.of(context).viewInsets.bottom == 0
              ? SizedBox(
                  height: getHeight(190, context),
                )
              : const SizedBox(),
          MediaQuery.of(context).viewInsets.bottom == 0
              ? loginPrivacy()
              : const SizedBox()
        ],
      ));
}
