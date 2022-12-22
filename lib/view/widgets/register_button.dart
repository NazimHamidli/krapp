import 'package:flutter/material.dart';

import '../../utils/size.dart';

InkWell registerButton(BuildContext context, Function() onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: getWidth(320, context),
      height: getWidth(50, context),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Text(
          'Qeydiyyatdan keçmək',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}
