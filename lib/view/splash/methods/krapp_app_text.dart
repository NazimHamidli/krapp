import 'package:flutter/material.dart';

Positioned krappAppText() {
  return const Positioned(
      bottom: 0,
      child: Text(
        'www.krapp.app',
        style: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
      ));
}
