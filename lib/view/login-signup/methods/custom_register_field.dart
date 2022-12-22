import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/size.dart';

Container customRegisterField(
    BuildContext context, TextEditingController controller, String hintText) {
  return Container(
    width: getWidth(330, context),
    height: getWidth(50, context),
    padding: const EdgeInsets.only(left: 15, right: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: hintText != "FİN kod *"
        ? TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getWidth(200, context),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/attention.svg'))
            ],
          ),
  );
}
