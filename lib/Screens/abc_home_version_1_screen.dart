import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
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

              ///Text Categories and See All
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(aBC_StringCategories,style: CategoriesTextFieldStyle),
              //
              //         InkWell(
              //           child: Text(aBC_StringSeeAll,style: SeeAllTextFieldStyle),
              //           onTap: () {
              //
              //             },
              //         )
              //       ],
              //     ),
                  CustomSellAllRow(mainHeadingText: aBC_StringCategories, screen:ABCLoginScreen() ),

              // SizedBox(
                  //   height: 18.0,
                  // ),
              /// Categories List of Man, Women, Kids
              // SizedBox(
              //   height: 75.0,
              //   width: double.infinity,
              //   child: ListView(
              //     scrollDirection : Axis.horizontal,
              //     shrinkWrap : true,
              //     children: [
              //       CustomCategoriesListViewSingleItems(
              //         listViewText: aBC_ListViewHeadingStringFemale,
              //         imagePaths: imagePathPngImage1,
              //         linearGradientColorOne: abc_CategoriesListViewLightBlue,
              //         linearGradientColorTwo: abc_CategoriesListViewBlue,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       CustomCategoriesListViewSingleItems(
              //         listViewText: aBC_ListViewHeadingStringMale,
              //         imagePaths: imagePathPngImage2,
              //         linearGradientColorOne: abc_CategoriesListViewRed,
              //         linearGradientColorTwo: abc_CategoriesListViewDarkRed,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       CustomCategoriesListViewSingleItems(
              //         listViewText: aBC_ListViewHeadingStringKids,
              //         imagePaths: imagePathPngImage3,
              //         linearGradientColorOne: abc_CategoriesListViewDarkGreen,
              //         linearGradientColorTwo: abc_CategoriesListViewGreen,
              //         screen: ABCLoginScreen(),
              //       ),
              //     ],
              //   ),
              // ),
              CustomCategoriesListView(),

              ///Text Featured and See All
              CustomSellAllRow(mainHeadingText: aBC_StringFeatured, screen:ABCLoginScreen() ),

              /// Featured Product
              // SizedBox(
              //   height: 200.0,
              //   width: double.infinity,
              //   child: ListView(
              //     scrollDirection : Axis.horizontal,
              //     shrinkWrap : true,
              //     children: [
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringWomanTShirt,
              //         imagePaths: imagePathProductImage2,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringManTShirt,
              //         imagePaths: imagePathProductImage3,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringWomanTShirt,
              //         imagePaths: imagePathProductImage1,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringWomanTShirt,
              //         imagePaths: imagePathProductImage2,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringManTShirt,
              //         imagePaths: imagePathProductImage3,
              //         screen: ABCLoginScreen(),
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       CustomProductListViewSingleItems(
              //         priceText: aBC_Cash_N_Carry_StringPrice,
              //         nameText: aBC_StringWomanTShirt,
              //         imagePaths: imagePathProductImage1,
              //         screen: ABCLoginScreen(),
              //       ),
              //     ],
              //   ),
              // ),
              CustomFeaturedListView(),
            ],
          ),
        ),
      ),
    );
  }
}



