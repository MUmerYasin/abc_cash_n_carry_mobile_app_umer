import 'package:abc_cash_n_carry/Screens/abc_welcome_to_bolt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Configs/Strings/product_details_strings.dart';
import 'Configs/Strings/screen_titles_strings.dart';
import 'Helpers/help_button.dart';
import 'Screens/abc_login_screen.dart';
import 'Screens/abc_splash_screen.dart';
import 'generated/assets_images_path.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: screenTitlesABCCashAndCarry,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      // home: MyHomePage(title: ''),
      // home: SplashScreen(),// Front End Complete
      // home: WelcomeToABCScreen(),// Front End Complete
      home: ABCLoginScreen(),// Front End Complete
    );
  }
}





//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Image.asset("assets/loading_screen.svg"),
//
//             SmallBlueBackgroundButton(child: aBC_Cash_N_Carry_StringLogin,onPressed: (){},),
//
//
//             // SizedBox(
//             //   height: 100,
//             //   child: SvgPicture.asset(
//             //       imagePathCancelIcon,
//             //   semanticsLabel: 'Acme Logo'
//             //   ),
//             // ),
//
//             // SvgPicture.asset(
//             //   'assets/image14.svg',
//             //   // height: 20.0,
//             //   // width: 20.0,
//             //   allowDrawingOutsideViewBox: false,
//             // ),
//           ],
//         ),
//       ),
//      // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
