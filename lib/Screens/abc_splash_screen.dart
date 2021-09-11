import 'dart:async';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Screens/abc_welcome_to_bolt.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 6),
      () => Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (BuildContext context) => WelcomeToABCScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF659cf8),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [SliderBlueTextColor, abc_Color8],
              stops: [0.0, 1.0],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      imagePathLoadingScreen,
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.contain,
                      // bundle:
                      alignment: Alignment.center,
                      allowDrawingOutsideViewBox: false,
                    ),
                    SvgPicture.asset(
                      imagePathCartColorLogo,
                      height: 82.0,
                      width: 82.0,
                      // fit : BoxFit.contain,
                      // bundle:
                      // alignment : Alignment.center,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Icon(
                  CupertinoIcons.question,
                  color: ButtonWhiteTextColor,
                ),
              )
            ],
          ),
        ));
  }
}
