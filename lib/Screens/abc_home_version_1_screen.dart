import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Screens/abc_signup_screen.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class ABCHomeVersionOneScreen extends StatefulWidget {
  const ABCHomeVersionOneScreen({Key? key}) : super(key: key);

  @override
  _ABCHomeVersionOneScreenState createState() => _ABCHomeVersionOneScreenState();
}

class _ABCHomeVersionOneScreenState extends State<ABCHomeVersionOneScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 40.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Custom Back Screen Button
              CustomNotificationScreenButton(),
              /// Search Bar
              SearchBarTextField(),

              SizedBox(
                height: 15.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: <Widget>[

                      SizedBox(
                        height: 70.0,
                        width: 150.0,
                        child: Neumorphic(
                          style: NeumorphicStyle(

                          ),
                            child:  Stack(
                              children: <Widget>[

                                Container(
                                  decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //   image: const AssetImage(''),
                                    //   fit: BoxFit.fill,
                                    // ),
                                  ),
                                  child: SvgPicture.asset(
                                    imagePathFilter,
                                    height: 70.0,
                                    width: 150.0,
                                    fit : BoxFit.cover,
                                    // bundle:
                                    // alignment : Alignment.center,
                                    allowDrawingOutsideViewBox: false,
                                  ),
                                ),


                                // Container(
                                //
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(5.0),
                                //     gradient: LinearGradient(
                                //       begin: Alignment(0.0, -1.0),
                                //       end: Alignment(0.0, 1.0),
                                //       colors: [const Color(0xff667eea), const Color(0xff64b6ff)],
                                //       stops: [0.0, 1.0],
                                //     ),
                                //     boxShadow: [
                                //       BoxShadow(
                                //         color: const Color(0x29000000),
                                //         offset: Offset(0, 15),
                                //         blurRadius: 31,
                                //       ),
                                //     ],
                                //   ),
                                //
                                // ),
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    gradient: LinearGradient(
                                      begin: Alignment(-1.0, 0.06),
                                      end: Alignment(1.0, 0.12),
                                      colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
                                      stops: [0.0, 1.0],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: abc_CategoriesListViewBlack,
                                        offset: Offset(0, 15),
                                        blurRadius: 31,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      aBC_ListViewHeadingStringMale,
                                      style: categoriesListViewHeadingStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                      ),










                    ],
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
