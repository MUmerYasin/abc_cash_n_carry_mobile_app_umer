import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'abc_favorite_screen.dart';
import 'abc_featured_screen.dart';

class ABCHomeVersionOneScreen extends StatefulWidget {
  const ABCHomeVersionOneScreen({Key? key}) : super(key: key);

  @override
  _ABCHomeVersionOneScreenState createState() =>
      _ABCHomeVersionOneScreenState();
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

              ///Text Categories and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringCategories,
                  screen: ABCFeaturedScreen()),

              /// Categories List of Man, Women, Kids
              CustomCategoriesListView(),

              ///Text Featured and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringFeatured,
                  screen: ABCFeaturedScreen()),

              /// Featured Product
              CustomFeaturedListView(),

              ///Text Featured and See All
              CustomSellAllRow(
                  mainHeadingText: aBC_StringBestSell,
                  screen: ABCFavoriteScreen()),

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
