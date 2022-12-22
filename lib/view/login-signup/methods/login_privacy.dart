import 'package:flutter/material.dart';

RichText loginPrivacy() {
  return RichText(
      text: const TextSpan(
    children: [
      TextSpan(
        text: 'Daxil etməklə ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
      TextSpan(
        text: 'Məxfilik Siyasəti ',
        style: TextStyle(
          color: Color(0xffCDF3F9),
          decoration: TextDecoration.underline,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
      TextSpan(
        text: ' və\n   ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
      TextSpan(
        text: 'İstifadə Şərtləri',
        style: TextStyle(
          color: Color(0xffCDF3F9),
          decoration: TextDecoration.underline,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
      TextSpan(
        text: ' ilə razılaşırsınız',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  ));
}
