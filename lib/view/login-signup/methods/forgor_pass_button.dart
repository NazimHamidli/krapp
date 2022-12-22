import 'package:flutter/material.dart';
import 'package:krapp/providers/auth/auth_provider.dart';
import 'package:provider/provider.dart';
import '../../../utils/size.dart';

SizedBox forgotPassButton(BuildContext context) {
  return SizedBox(
    width: getWidth(320, context),
    height: getWidth(50, context),
    child: TextButton(
        onPressed: () {
          context.read<AuthProvider>().changeStatusValue(2);
        },
        child: const Text(
          'Şifrə yaddan çıxıb?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        )),
  );
}
