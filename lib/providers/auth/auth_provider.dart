import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';

import '../../models/local_auth_api.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController _pinCodeController = TextEditingController();
  TextEditingController get pinCodeController => _pinCodeController;
  final LocalAuthentication auth = LocalAuthentication();
  BiometricsSupportState biometricsSupportState =
      BiometricsSupportState.unknown;
  bool isAuthenticated = false;

  final box = GetStorage();
  bool _isLogoTop = false;
  bool _logoSize = false;
  final bool _hasToken = false;
  bool get hasToken => _hasToken;
  bool get isLogoTop => _isLogoTop;
  bool get logoSize => _logoSize;

  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      _isLogoTop = true;

      notifyListeners();
    });
  }

  void openKeyboard() {
    _logoSize = true;
    checkFingerPrint();
    notifyListeners();
  }

  void checkFingerPrint() async {
    bool isSupported = await auth.isDeviceSupported();
    biometricsSupportState = isSupported
        ? BiometricsSupportState.supported
        : BiometricsSupportState.unsupported;
    if (isSupported) callFingerPrint();
    notifyListeners();
  }

  void callFingerPrint() async {
    isAuthenticated = await LocalAuthApi.authenticate();
    notifyListeners();
  }

  void editPincodeController(String num) {
    _pinCodeController.text.length < 4
        ? _pinCodeController.text = '${_pinCodeController.text}$num'
        : null;
    notifyListeners();
  }

  void deletePincodeController() {
    _pinCodeController.text.isNotEmpty
        ? _pinCodeController.text = _pinCodeController.text
            .substring(0, _pinCodeController.text.length - 1)
        : null;
    notifyListeners();
  }
}

enum BiometricsSupportState {
  unknown,
  supported,
  unsupported,
}
