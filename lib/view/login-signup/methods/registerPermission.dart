import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

SizedBox registerPermissionCheck(BuildContext context, bool isFace) {
  bool permisson = isFace
      ? context.watch<AuthProvider>().isFaceIdPermission
      : context.watch<AuthProvider>().isUsingRulesPermission;
  return SizedBox(
    width: getWidth(320, context),
    height: getWidth(50, context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            context.read<AuthProvider>().changePermission(isFace);
          },
          child: Container(
            height: getWidth(20, context),
            width: getWidth(20, context),
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: (Colors.blue[900])!,
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: permisson
                ? SvgPicture.asset(
                    'assets/icons/done.svg',
                    //  height: getWidth(20, context),
                    fit: BoxFit.contain,
                  )
                : const SizedBox(),
          ),
        ),
        SizedBox(
          width: getWidth(10, context),
        ),
        Text(
          isFace
              ? 'Touch/Face ID-dən istifadəyə icazə'
              : 'Qaydaları qəbul edirəm',
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )
      ],
    ),
  );
}
