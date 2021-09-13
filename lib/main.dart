import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Configs/Strings/screen_titles_strings.dart';
import 'Screens/abc_address_screen.dart';
import 'Screens/abc_confirmation_screen.dart';
import 'Screens/abc_payment_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {

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
      // home: ABCLoginScreen(),// Front End Complete
      // home: ABCSignupScreen(),// Front End Complete
      // home: ABCCreateAddressScreen(),// Front End Complete
      // home: ABCUserProfileScreen(),// Front End Complete
      // home: ABCConfirmationScreen(),// Front End Complete
      // home: ABCPaymentScreen(),// Front End Complete
      home: ABCAddressScreen(),// Front End Complete
    );
  }
}
