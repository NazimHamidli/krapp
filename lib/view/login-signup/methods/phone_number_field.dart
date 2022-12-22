import 'package:flutter/material.dart';

import '../../../utils/size.dart';

Row phoneNumberField(BuildContext context) {
  return Row(
    //  mainAxisAlignment: MainAxisAlignment.,
    children: <Widget>[
      Container(
        width: getWidth(100, context),
        height: getWidth(50, context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/icons/AZ.png',
              width: getWidth(30, context),
              height: getWidth(30, context),
            ),
            SizedBox(width: getWidth(5, context)),
            SizedBox(
              width: getWidth(45, context),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '+994',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: getWidth(15, context),
      ),
      Container(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(10, context),
          ),
          height: getWidth(50, context),
          width: getWidth(200, context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
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
          ))
    ],
  );
}
