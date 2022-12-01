import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController _pinCodeController = TextEditingController();
  TextEditingController get pinCodeController => _pinCodeController;
  final box = GetStorage();
  bool _align = false;
  bool _size = false;
  final bool _hasToken = false;
  bool get hasToken => _hasToken;
  bool get align => _align;
  bool get size => _size;

  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      _align = true;
      notifyListeners();
    });
    Future.delayed(const Duration(milliseconds: 4000), () {
      _size = true;
      notifyListeners();
    });
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
