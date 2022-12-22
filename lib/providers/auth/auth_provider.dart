import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';

import '../../models/local_auth_api.dart';
import '../../utils/enums.dart';
import '../../view/login-signup/forgotpass/forgotpass.dart';
import '../../view/login-signup/login_page.dart';
import '../../view/login-signup/signup_page.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController _pinCodeController = TextEditingController();
  TextEditingController get pinCodeController => _pinCodeController;
  final LocalAuthentication auth = LocalAuthentication();
  BiometricsSupportState biometricsSupportState =
      BiometricsSupportState.unknown;
  bool isAuthenticated = false;
  bool _isLogoTop = false;
  bool _logoSize = false;
  final bool _hasToken = false;
  bool get hasToken => _hasToken;
  bool get isLogoTop => _isLogoTop;
  bool get logoSize => _logoSize;

  final box = GetStorage();

  //qeydiyyat sehifesi
  final List<String> registerFieldsName = [
    'Ad *',
    'Soyad *',
    'FİN kod *',
    'e-poçt *',
  ];
  bool _isFaceIdPermission = false;
  bool get isFaceIdPermission => _isFaceIdPermission;

  bool _isUsingRulesPermission = false;
  bool get isUsingRulesPermission => _isUsingRulesPermission;

  void changePermission(bool value) {
    if (value) {
      _isFaceIdPermission = !_isFaceIdPermission;
    } else {
      _isUsingRulesPermission = !_isUsingRulesPermission;
    }

    notifyListeners();
  }

//----------------------------------------------\\

//login, qeydiyyat, forgot statuslari
  List<String> status = ['login', 'register', 'forgot'];
  late String _curretntStatus = status[0];
  String get curretntStatus => _curretntStatus;
  void changeStatusValue(int index) {
    index <= 2 ? _curretntStatus = status[index] : _curretntStatus = status[0];
    notifyListeners();
  }

  changeWidgetsForStatus(BuildContext context) {
    if (_curretntStatus == 'login') {
      return loginPage(context);
    } else if (_curretntStatus == 'register') {
      return signUpPage(context);
    }
    return forgotPass(context);
  }
//----------------------------------------------\\

  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      _isLogoTop = true;
      notifyListeners();
    });
  }

//biometrik ucun funksiya
  void checkFingerPrint() async {
    bool isSupported = await auth.isDeviceSupported();
    biometricsSupportState = isSupported
        ? BiometricsSupportState.supported
        : BiometricsSupportState.unsupported;
    if (isSupported) callFingerPrint();
    notifyListeners();
  }
//----------------------------------------------\\

// fin kod keyboari ucun funksiyalar
  void openKeyboard() {
    _logoSize = true;
    checkFingerPrint();
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
  //----------------------------------------------\\
}
