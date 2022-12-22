import 'package:flutter/material.dart';

import '../../../../utils/size.dart';

Row otpHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      const Text(
        'Kodu daxil edin',
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(
        width: getWidth(40, context),
      )
    ],
  );
}
