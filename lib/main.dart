import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Configs/Strings/screen_titles_strings.dart';
import 'Screens/abc_home_version_1_screen.dart';
import 'Screens/abc_signup_screen.dart';
import 'Screens/abc_splash_screen.dart';
import 'Screens/abc_welcome_to_bolt.dart';

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
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      // Add the builder here

      // home: SplashScreen(), // Front End Complete
      // home: WelcomeToABCScreen(),// Front End Complete
      // home: ABCLoginScreen(),// Front End Complete
      // home: ABCSignupScreen(), // Front End Complete
      home: ABCHomeVersionOneScreen(), // Front End Complete
      // home: ABCItemDetailsScreen(),// Front End Complete
      // home: ABCItemDetailsAddToCardScreen(),// Front End Complete
      // home: ABCCartScreen(), // Front End Complete
      // home: ABCAddressScreen(),// Front End Complete
      // home: ABCPaymentScreen(),// Front End Complete
      // home: ABCCheckoutScreen(),// Front End Complete
      // home: ABCConfirmationScreen(),// Front End Complete
      // home: ABCCreateAddressScreen(),// Front End Complete
      // home: ABCUserProfileScreen(),// Front End Complete
      // home: ABCFeaturedScreen(),// Front End Complete
      // home: ABCFavoriteScreen(),// Front End Complete
      // home: ABCMyOrdersScreen(),// Front End Complete
    );
  }
}
