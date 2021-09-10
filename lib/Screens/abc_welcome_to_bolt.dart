import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class WelcomeToABCScreen extends StatefulWidget {
  const WelcomeToABCScreen({Key? key}) : super(key: key);

  @override
  _WelcomeToABCScreenState createState() => _WelcomeToABCScreenState();
}

class _WelcomeToABCScreenState extends State<WelcomeToABCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: aBC_Cash_N_Carry_StringWelcomeTo,
                        style: welcomeToABCStyle,
                        children: [
                          TextSpan(
                            text: aBC_Cash_N_Carry_StringABC,
                            style: aBCStyle,
                          ),
                        ]),
                    textAlign: TextAlign.center,
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(aBC_Cash_N_Carry_StringExploreUs, style: exploreUsStyle),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 65.0),
              child: SvgPicture.asset(
                imagePathWelcomeToBolt,
                width: MediaQuery.of(context).size.width * 0.85,
                height: 240.0,
                fit: BoxFit.contain,
              ),
            ),
            SmallBlueBackgroundButton(
              child: aBC_Cash_N_Carry_StringLogin,
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => ABCLoginScreen()),
                  );
                });
              },
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  aBC_Cash_N_Carry_StringSignup,
                  style: signUpButtonStyle,
                )),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
