import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../models/local_auth_api.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController _pinCodeController = TextEditingController();
  TextEditingController get pinCodeController => _pinCodeController;
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
    notifyListeners();
  }

  bool isAuthenticated = false;
  void callFingerPrint() async {
    isAuthenticated = await LocalAuthApi.authenticate();
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
