import 'package:flutter/material.dart';
import 'package:krapp/view/splash/methods/confirm_button.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';
import '../../login-signup/methods/dots.dart';
import '../../login-signup/methods/pin_keyboard.dart';

Positioned enterPin(BuildContext context, AuthProvider state) {
  return Positioned(
    bottom: getHeight(17, context),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Rəqəmsal şifrənizi təyin edin',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: getWidth(30, context)),
        dots(context, state),
        SizedBox(height: getWidth(30, context)),
        pinKeyboard(context, state),
        SizedBox(height: getWidth(30, context)),
        confirmButton(state, context)
      ],
    ),
  );
}
