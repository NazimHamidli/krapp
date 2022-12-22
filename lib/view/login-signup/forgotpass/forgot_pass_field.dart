import 'package:flutter/material.dart';

import '../../../utils/size.dart';

Container forgotPassField(BuildContext context) {
  return Container(
      width: getWidth(320, context),
      height: getHeight(55, context),
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Telefon nömrəsi',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ));
}
