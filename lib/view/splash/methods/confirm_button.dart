import 'package:flutter/material.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

ElevatedButton confirmButton(AuthProvider state, BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        state.pinCodeController.text.length == 4
            ? state.box.write('pin', state.pinCodeController.text)
            : null;
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(getWidth(300, context), getHeight(50, context)),
        backgroundColor: const Color(0xff00A8DD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Təstiqlə',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ));
}
