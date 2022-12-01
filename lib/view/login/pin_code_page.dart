// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../providers/auth/auth_provider.dart';
// import '../../utils/size.dart';
// import 'methods/dots.dart';
// import 'methods/pin_keyboard.dart';

// class PinCodePage extends StatelessWidget {
//   const PinCodePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => AuthProvider(),
//       child: Scaffold(
//         body: Container(
//           padding: EdgeInsets.symmetric(vertical: getWidth(20, context)),
//           height: getHeight(812, context),
//           width: getWidth(375, context),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xff00A8DD),
//                 Color(0xff176EA6),
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Consumer<AuthProvider>(builder: (context, state, child) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Image.asset(
//                   'assets/images/krapp_logo.png',
//                   // height: getWidth(100, context),
//                   width: getWidth(100, context),
//                 ),
//                 const Text(
//                   'Rəqəmsal şifrənizi təyin edin',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 dots(context, state),
//                 pinKeyboard(context, state),
//               ],
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
