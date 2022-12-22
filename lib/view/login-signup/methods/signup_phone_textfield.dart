import 'package:flutter/material.dart';

import '../../../utils/size.dart';

Row signupPhoneTextField(BuildContext context) {
  return Row(
    children: [
      Container(
          width: getWidth(55, context),
          height: getWidth(50, context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              '+994',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          )),
      SizedBox(
        width: getWidth(20, context),
      ),
      Container(
        width: getWidth(250, context),
        height: getWidth(50, context),
        padding: const EdgeInsets.only(left: 15, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Telefon nömrəsi',
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      )
    ],
  );
}
