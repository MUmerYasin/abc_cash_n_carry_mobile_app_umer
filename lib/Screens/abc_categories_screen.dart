import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ABCCategoriesScreen extends StatefulWidget {
  const ABCCategoriesScreen({Key? key}) : super(key: key);

  @override
  _ABCCategoriesScreenState createState() => _ABCCategoriesScreenState();
}

class _ABCCategoriesScreenState extends State<ABCCategoriesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarBackAndNotificationButtons(),
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 0.0,
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior : ScrollViewKeyboardDismissBehavior.onDrag,
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Custom Back Screen Button
              // CustomAppbarDrawerAndNotificationButton(),

              ///screenTitlesCategories Text
              Text(screenTitlesCategories, style: FeatureTextStyle),

              SizedBox(
                height: 15.0,
              ),

              /// Test AllFavoriteScreenScrollViewProducts
              AllCategoriesScrollViewProducts(),

              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
