import 'package:flutter/material.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

Row dots(BuildContext context, AuthProvider state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: getWidth(12, context),
        width: getWidth(12, context),
        decoration: BoxDecoration(
          color: state.pinCodeController.text.isNotEmpty
              ? Colors.white
              : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
      ),
      SizedBox(
        width: getWidth(10, context),
      ),
      Container(
        height: getWidth(12, context),
        width: getWidth(12, context),
        decoration: BoxDecoration(
          color: state.pinCodeController.text.length > 1
              ? Colors.white
              : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
      ),
      SizedBox(
        width: getWidth(10, context),
      ),
      Container(
        height: getWidth(12, context),
        width: getWidth(12, context),
        decoration: BoxDecoration(
          color: state.pinCodeController.text.length > 2
              ? Colors.white
              : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
      ),
      SizedBox(
        width: getWidth(10, context),
      ),
      Container(
        height: getWidth(12, context),
        width: getWidth(12, context),
        decoration: BoxDecoration(
          color: state.pinCodeController.text.length > 3
              ? Colors.white
              : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
      ),
    ],
  );
}
