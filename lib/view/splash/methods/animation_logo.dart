import 'package:flutter/material.dart';
import 'package:krapp/utils/size.dart';

import '../../../providers/auth/auth_provider.dart';

AnimatedAlign animationLogo(AuthProvider state, BuildContext context) {
  return AnimatedAlign(
    onEnd: state.openKeyboard,
    alignment: state.isLogoTop ? Alignment.topCenter : Alignment.center,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeIn,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: state.isLogoTop ? getWidth(150, context) : getWidth(300, context),
      height: state.isLogoTop ? getWidth(150, context) : getWidth(300, context),
      child: Image.asset(
        'assets/images/krapp_logo.png',
        fit: BoxFit.contain,
      ),
    ),
  );
}
