import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/slider_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_carousel_slider.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abc_categories_screen.dart';
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ButtonWhiteTextColor,
        appBar: CustomAppBarDrawerAndNotificationButtons(),
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
                /// Search Bar
                SearchBarTextField(),
                SizedBox(
                  height: 16.0,
                ),

                /// Carousel With Indicator
                // Container(
                //   // width: MediaQuery.of(context).size.width * 0.85,
                //   // padding: EdgeInsets.symmetric(vertical: 65.0),
                //   child: HomePageCarouselWithIndicator(
                //     imgList: imgListHomePage,
                //     heightOfSlider: 150,
                //   ),
                // ),

                ///Text Categories and See All
                CustomSellAllRow(
                  mainHeadingText: aBC_StringCategories,
                  screen: ABCCategoriesScreen(),
                ),

                /// Categories List of Man, Women, Kids
                CustomCategoriesListView(),

                ///////-------------------------------------------

                ///Text Featured and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringFeatured,
                    screen: ABCFeaturedScreen()),

                /// Featured Product
                // CustomFeaturedListView(),
                FeatureProductsShowInHomePage(),

                ///Text BestSell and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringBestSell,
                    screen: ABCFavoriteScreen()),

                /// Best Sell Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///////////////////////////////////////////////

                ///Text Flash Sale and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringFlashSale,
                    screen: ABCFavoriteScreen()),

                /// Flash Sale Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Just For You and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringJustForYou,
                    screen: ABCFavoriteScreen()),

                /// Just For You Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Top Rankings and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringTopRankings,
                    screen: ABCFavoriteScreen()),

                /// Top Reviewed Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Top Reviewed and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringTopReviewed,
                    screen: ABCFavoriteScreen()),

                ///Top ReviewedProducts Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///Text Our collections and See All
                CustomSellAllRow(
                    mainHeadingText: aBC_StringOurCollections,
                    screen: ABCFavoriteScreen()),

                /// Our collections Product
                // CustomBestSellListView(),
                FeatureProductsShowInHomePage(),

                ///aBC_StringFlashSale
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
