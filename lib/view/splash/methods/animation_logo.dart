import 'package:flutter/material.dart';

import '../../../providers/auth/auth_provider.dart';
import '../../../utils/size.dart';

AnimatedAlign animationLogo(AuthProvider state, BuildContext context) {
  return AnimatedAlign(
    alignment: state.align ? Alignment.topCenter : Alignment.center,
    duration: const Duration(seconds: 2),
    curve: Curves.fastOutSlowIn,
    child: AnimatedSize(
      curve: Curves.fastOutSlowIn,
      duration: const Duration(seconds: 2),
      child: Image.asset(
        'assets/images/krapp_logo.png',
        height: state.size ? getWidth(150, context) : getWidth(300, context),
      ),
    ),
  );
}
