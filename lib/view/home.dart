import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/home/home_provider.dart';
import '../utils/color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Consumer<HomeProvider>(builder: (context, tab, child) {
        return Scaffold(
          key: scaffoldKey,
          body: tab.getTab(),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white, // (Colors.grey[50])!,
            selectedLabelStyle: const TextStyle(fontSize: 8),
            fixedColor: kPrimaryColor,
            unselectedLabelStyle: const TextStyle(fontSize: 8),
            type: BottomNavigationBarType.fixed,
            currentIndex: tab.index,
            onTap: (value) {
              tab.changeIndex(value);
              switch (tab.index) {
                case 0:
                  break;
                case 1:
                  break;
                case 2:
                  break;
                case 3:
                  break;
              }
            },
            items: tab.bottomItems,
          ),
        );
      }),
    );
  }
}
