import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:krapp/utils/routes.dart';

void main() async {
  await GetStorage.init();
  runApp(const Krapp());
}

class Krapp extends StatelessWidget {
  const Krapp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Krapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/home',
      routes: routes,
    );
  }
}
