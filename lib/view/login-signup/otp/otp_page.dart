import 'package:flutter/material.dart';
import '../../../utils/size.dart';
import 'methods/otp_hearder.dart';
import 'methods/pin_text_field.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  final TextEditingController pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20, context),
              vertical: getHeight(40, context)),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff00A8DD),
                Color(0xff176EA6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              otpHeader(context),
              SizedBox(height: getHeight(150, context)),
              const Text(
                  '+99455 666 77 88 nömrəsinə kod göndərdik və aktiv olacaq: 2m 59s',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: getHeight(10, context)),
              pinTextField(context, pincodeController),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Kod gəlmədi? Yenidən göndər',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
