import 'dart:ui';

import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/material.dart';

import 'listview_Data_strings.dart';
import 'text_fields_strings.dart';

// final List<String> imgListHomePage = [
//   imagePathProductImage1,
// ];

/// Cart Screen

/// products images
const List<String> imgListProductsImage = [
  imagePathProductImage1,
  imagePathProductImage2,
  imagePathProductImage3,
  imagePathProductImage4,
  imagePathProductImage5,
  imagePathProductImage6,
  imagePathProductImage7
];

/// Price Discount
final List<double> listOfDiscountProductsPrice = [
  aBC_DiscountPrice,
  aBC_DiscountPrice1,
  aBC_DiscountPrice2,
  aBC_DiscountPrice3,
  aBC_DiscountPrice4,
  aBC_DiscountPrice5,
  aBC_DiscountPrice6,
];

/// Price Original
final List<double> listOfOriginalProductsPrice = [
  aBC_OriginalPrice,
  aBC_OriginalPrice1,
  aBC_OriginalPrice2,
  aBC_OriginalPrice3,
  aBC_OriginalPrice4,
  aBC_OriginalPrice5,
  aBC_OriginalPrice6,
];

/// Product name
final List<String> listProductName = [
  aBC_StringWomanTShirt,
  aBC_StringWomanTShirt,
  aBC_StringManTShirt,
  aBC_StringWomanTShirt,
  aBC_StringManTShirt,
  aBC_StringWomanTShirt,
  aBC_StringWomanTShirt,
];

/// Sub title
final List<String> listProductSubTitle = [
  aBC_StringLottoLTD,
  aBC_StringBata,
  aBC_StringLottoLTD,
  aBC_StringPlusPoint,
  aBC_StringLottoLTD,
  aBC_StringBata,
  aBC_StringPlusPoint
];

/// Home Page Categories List View Builder

///First Color of linear Gradient on Container
final List<Color> customCategoriesFirstColors = [
  abc_CategoriesListViewLightBlue,
  abc_CategoriesListViewRed,
  abc_CategoriesListViewDarkGreen,
  pinkLinearGradientColors,
  blueLinearGradientColors,
  yellowLinearGradientColors,
  purpleLinearGradientColors,
  orangeLinearGradientColors
];

///Second Color of linear Gradient on Container
final List<Color> customCategoriesSecondColors = [
  abc_CategoriesListViewBlue,
  abc_CategoriesListViewDarkRed,
  abc_CategoriesListViewGreen,
  pinkLightLinearGradientColors,
  blueLightLinearGradientColors,
  yellowLightLinearGradientColors,
  purpleLightLinearGradientColors,
  orangeLightLinearGradientColors
];

/// Images Path
final List<String> imgListCategories = [
  imagePathPngImage1,
  imagePathPngImage2,
  imagePathPngImage3,
  imagePathJewelery,
  imagePathBeautyProducts,
  imagePathGroceries,
  imagePathElectronicProductFirst,
  imagePathElectronicProductTwo,
];

/// Names

final List<String> categoriesNames = [
  aBC_ListViewHeadingStringMale,
  aBC_ListViewHeadingStringFemale,
  aBC_ListViewHeadingStringKids,
  aBC_ListViewHeadingStringJewelery,
  aBC_ListViewHeadingStringBeauty,
  aBC_ListViewHeadingStringGroceries,
  aBC_ListViewHeadingStringElectronics,
  aBC_ListViewHeadingStringHomeAppliances,
];

/// Profile Screen
/// Gender

final List<String> genderType = [
  aBC_StringMale,
  aBC_StringFemale,
  aBC_StringOthers
];

/// Product Size
List<String> singleProductSize = ["S", "M", "L", "XL", "XXL"];

///singleProductColors
List<Color> singleProductColors = [
  Colors.black,
  Colors.purple,
  Colors.orange.shade200,
  Colors.blueGrey,
  Colors.red,
  Colors.green,
  Colors.amber,
];
