import 'dart:async';

import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'abc_home_version_1_screen.dart';

class ABCConfirmationScreen extends StatefulWidget {
  const ABCConfirmationScreen({Key? key}) : super(key: key);

  @override
  _ABCConfirmationScreenState createState() => _ABCConfirmationScreenState();
}

class _ABCConfirmationScreenState extends State<ABCConfirmationScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 12),
      () => Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (BuildContext context) => ABCHomeVersionOneScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ButtonWhiteTextColor,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   begin: Alignment(0.0, -1.0),
                //   end: Alignment(0.0, 1.0),
                //   colors: [SliderBlueTextColor, abc_Color8],
                //   stops: [0.0, 1.0],
                // ),
                ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        imagePathLike,
                        height: 200.0,
                        width: 200.0,
                        fit: BoxFit.contain,
                        // bundle:
                        alignment: Alignment.center,
                        allowDrawingOutsideViewBox: false,
                      ),
                      // SvgPicture.asset(
                      //   imagePathCartColorLogo,
                      //   height: 82.0,
                      //   width: 82.0,
                      //   // fit : BoxFit.contain,
                      //   // bundle:
                      //   // alignment : Alignment.center,
                      //   allowDrawingOutsideViewBox: true,
                      // ),
                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirmation',
                      style: confirmationStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'You have successfully\ncompleted your payment procedure',
                      style: youHaveSuccessfullyStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                /// Login Button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: aBC_StringBackToHome,
                      onPressed: () {
                        setState(() {
                          // if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    ABCHomeVersionOneScreen()),
                          );
                          // }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
