import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color.dart';
import '../../view/credit_page/credit.dart';
import '../../view/dashboard/dashboard_page.dart';
import '../../view/offers_page/offer.dart';
import '../../view/payment_page/payment_page.dart';

class HomeProvider extends ChangeNotifier {
  var tabs = <Widget>[
    const DashboardPage(),
    const OfferPage(),
    const CreditPage(),
    const PaymentPage(),
  ];
  var bottomItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset('assets/icons/home.svg', color: kPrimaryColor),
        icon: SvgPicture.asset('assets/icons/home.svg', color: Colors.grey),
        label: 'Əsas'),
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset('assets/icons/percent.svg', color: kPrimaryColor),
        icon: SvgPicture.asset('assets/icons/percent.svg', color: Colors.grey),
        label: 'Təkliflər'),
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset('assets/icons/247.svg', color: kPrimaryColor),
        icon: SvgPicture.asset('assets/icons/247.svg', color: Colors.grey),
        label: 'Ani kredit'),
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset('assets/icons/credit.svg', color: kPrimaryColor),
        icon: SvgPicture.asset('assets/icons/credit.svg', color: Colors.grey),
        label: 'Ödənişlər'),
  ];

  getTab() {
    return tabs[_index];
  }

  int _index = 0;
  int get index => _index;
  void changeIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
