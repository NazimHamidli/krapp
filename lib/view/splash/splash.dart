import 'package:flutter/material.dart';
import 'package:krapp/utils/size.dart';
import 'package:provider/provider.dart';

import '../../providers/auth/auth_provider.dart';
import '../login/login_page.dart';
import 'methods/animation_logo.dart';
import 'methods/enter_pin_widget.dart';
import 'methods/krapp_app_text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider()..initState(),
      child: Consumer<AuthProvider>(builder: (context, state, child) {
        return Scaffold(
            body: Container(
          padding: EdgeInsets.symmetric(vertical: getWidth(40, context)),
          height: getHeight(812, context),
          width: getWidth(375, context),
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              animationLogo(state, context),
              state.logoSize
                  ? !state.hasToken
                      ? loginPage(context) //login page
                      : enterPin(context, state) //pin code page
                  : const SizedBox(),
              !state.isLogoTop ? krappAppText() : const SizedBox()
            ],
          ),
        ));
      }),
    );
  }
}
