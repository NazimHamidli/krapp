import '../view/home.dart';
import '../view/login-signup/otp/otp_page.dart';
import '../view/splash/splash.dart';

var routes = {
  '/': (context) => const Splash(),
  //'/pinCode': (context) => const PinCodePage(),
  '/home': (context) => HomePage(),
  '/otp': (context) => OtpPage(),
};
