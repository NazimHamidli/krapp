import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

SizedBox backButton(BuildContext context) {
  return SizedBox(
    width: getWidth(320, context),
    height: getWidth(50, context),
    child: TextButton(
        onPressed: () {
          context.read<AuthProvider>().changeStatusValue(0);
        },
        child: const Text(
          'Geri',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        )),
  );
}
