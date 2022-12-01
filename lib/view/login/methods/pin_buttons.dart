import 'package:flutter/material.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

Material pinButtons(BuildContext context, AuthProvider state, String text) {
  return Material(
    color: Colors.transparent,
    child: Container(
      width: getWidth(60, context),
      height: getWidth(60, context),
      //    padding: EdgeInsets.all(getWidth(20, context)),
      margin: EdgeInsets.all(getWidth(7, context)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70),
        color: Color.fromRGBO(205, 243, 249, 0.16),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(75),
        onTap: () {
          state.editPincodeController(text);
        },
        child: Center(
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    ),
  );
}
