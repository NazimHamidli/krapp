import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../utils/size.dart';

Padding pinTextField(
    BuildContext context, TextEditingController pincodeController) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
    child: PinCodeTextField(
      controller: pincodeController,

      cursorColor: Colors.black,
      onCompleted: (v) {
        //state.sendPinCode(context, v, token);s
      },
      keyboardType: TextInputType.number,
      autoFocus: true,
      length: 4,
      obscureText: false,
      animationType: AnimationType.scale,
      animationDuration: const Duration(milliseconds: 300),

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        selectedColor: Colors.white,
        inactiveFillColor: Colors.white,
        borderRadius: BorderRadius.circular(15),
        fieldHeight: getHeight(60, context),
        fieldWidth: getWidth(47, context),
      ),
      //errorAnimationController: errorController, // Pass it here
      onChanged: (value) {},
      appContext: context,
    ),
  );
}
