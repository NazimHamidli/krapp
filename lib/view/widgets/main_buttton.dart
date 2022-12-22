import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/size.dart';

ElevatedButton mainButton(BuildContext context, Function() onTap, String text) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: kButtonColor,
      ),
      onPressed: onTap,
      child: SizedBox(
        width: double.infinity,
        height: getHeight(60, context),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ));
}
