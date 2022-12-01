import 'package:flutter/material.dart';
import 'package:krapp/models/local_auth_api.dart';
import 'package:krapp/view/login/methods/pin_buttons.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

Row pinKeyboard(BuildContext context, AuthProvider state) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pinButtons(context, state, '1'),
          pinButtons(context, state, '4'),
          pinButtons(context, state, '7'),
          Container(
            width: getWidth(90, context),
            height: getWidth(80, context),
            margin: EdgeInsets.only(bottom: getWidth(15, context)),
            child: IconButton(
                onPressed: () {
                  state.pinCodeController.text.isNotEmpty
                      ? state.deletePincodeController()
                      : null;
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: getWidth(25, context),
                )),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pinButtons(context, state, '2'),
          pinButtons(context, state, '5'),
          pinButtons(context, state, '8'),
          pinButtons(context, state, '0'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pinButtons(context, state, '3'),
          pinButtons(context, state, '6'),
          pinButtons(context, state, '9'),
          Container(
            width: getWidth(90, context),
            height: getWidth(80, context),
            margin: EdgeInsets.only(bottom: getWidth(15, context)),
            child: IconButton(
                onPressed: () async {
                  final isAuthenticated = await LocalAuthApi.authenticate();
                  if (isAuthenticated) {
                    //go new page
                    print(true);
                  }
                },
                icon: Icon(
                  Icons.fingerprint,
                  color: Colors.white,
                  size: getWidth(40, context),
                )),
          ),
        ],
      ),
    ],
  );
}
