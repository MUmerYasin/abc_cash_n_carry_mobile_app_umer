import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'abc_login_screen.dart';

class ABCHomeVersionOneScreen extends StatefulWidget {
  const ABCHomeVersionOneScreen({Key? key}) : super(key: key);

  @override
  _ABCHomeVersionOneScreenState createState() =>
      _ABCHomeVersionOneScreenState();
}

class _ABCHomeVersionOneScreenState extends State<ABCHomeVersionOneScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();



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

              ///Text Categories and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringCategories,
                  screen: ABCLoginScreen()),

              /// Categories List of Man, Women, Kids
              CustomCategoriesListView(),

              ///Text Featured and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringFeatured,
                  screen: ABCLoginScreen()),

              /// Featured Product
              CustomFeaturedListView(),

              ///Text Featured and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringBestSell,
                  screen: ABCLoginScreen()),

              /// Best Sell Product
              CustomBestSellListView(),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
