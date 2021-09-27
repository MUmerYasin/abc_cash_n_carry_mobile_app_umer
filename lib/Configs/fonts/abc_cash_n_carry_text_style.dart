import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Custom Font
///Font Size, Style, Wright, Colors

/// Font Family
const String textFontFamilySegoeUI = "Segoe UI";
const String textFontFamilyNunitoSansBold = "NunitoSans-Bold";
const String textFontFamilyNunitoSans = "NunitoSans";

///Text Style
const TextStyle welcomeToABCStyle = TextStyle(
  color: HeadingTextColor,
  fontSize: 20.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle aBCStyle = TextStyle(
  color: HeadingTextColor,
  fontSize: 22.0,
  fontWeight: FontWeight.w600,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle exploreUsStyle = TextStyle(
  color: HeadingTextColor,
  height: 2.0,
  fontSize: 18.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle signUpButtonStyle = TextStyle(
  color: HeadingDarkTextColor,
  fontSize: 16.0,
  letterSpacing: -0.3858822937011719,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle loginWhiteButtonStyle = TextStyle(
  color: ButtonWhiteTextColor,
  letterSpacing: -0.3858822937011719,
  fontSize: 16.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle addCardButtonStyle = TextStyle(
  color: SliderBlueTextColor,
  fontSize: 20.0,
  height: 1,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle loginStyle = TextStyle(
  color: ScreenMainHeadingDarkTextColor,
  fontSize: 30.0,
  height: 2.0,
  letterSpacing: -0.7235293006896972,
  fontFamily: textFontFamilySegoeUI,
);

/// Text Field
const TextStyle loginTextFieldStyle = TextStyle(
  color: TextFieldTitleColor,
  fontSize: 14.0,
  height: 0,
  letterSpacing: -0.3376470069885254,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle loginHintTextFieldStyle = TextStyle(
  color: HeadingTextColor,
  height: 0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle SearchTextFieldStyle = TextStyle(
  color: SearchFieldTextTipColor,
  letterSpacing: -0.4341176147460938,
  fontSize: 18,
  height: 2.5,
  fontFamily: textFontFamilySegoeUI,
);

/// Product Details
const TextStyle CategoriesTextStyle = TextStyle(
  color: SecondHeadingTextColor,
  fontSize: 22,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle SeeAllTextStyle = TextStyle(
  color: SecondHeadingTextLightColor,
  fontSize: 14,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle ProductPriceStyle = TextStyle(
  color: PriceTextColor,
  fontSize: 16,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle notHaveAccountStyle = TextStyle(
  color: notHaveAccountTextColor,
  letterSpacing: -0.3376470069885254,
  fontSize: 14.0,
  height: 2.5,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle notHaveAccountSignUpStyle = TextStyle(
  color: SimpleTextColor,
  letterSpacing: -0.3376470069885254,
  fontSize: 14.0,
  height: 2.5,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle confirmationStyle = TextStyle(
  color: SecondHeadingTextColor,
  fontSize: 30.0,
  height: 2.5,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle youHaveSuccessfullyStyle = TextStyle(
  color: SecondHeadingTextLightColor,
  letterSpacing: 0.196,
  fontSize: 14.0,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle SubTotalStyle = TextStyle(
  color: ProductSubHeadingTextColor,
  letterSpacing: 0.23800000000000002,
  fontSize: 17.0,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle SubTotalPriceStyle = TextStyle(
  color: SecondHeadingTextColor,
  letterSpacing: 0.23800000000000002,
  fontSize: 17.0,
  height: 1.0,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle AddressScreenRadioButtonStyle = TextStyle(
  color: SecondHeadingTextColor,
  fontSize: 16.0,
  height: 1.5,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle categoriesListViewHeadingStyle = TextStyle(
  color: ButtonWhiteTextColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  height: 1.5,
  fontFamily: textFontFamilySegoeUI,
);

//drawer
const TextStyle drawerTextStyle = TextStyle(
  color: drawerTextColor,
  fontSize: 24.0,
  height: 1.8,
  fontFamily: textFontFamilySegoeUI,
);

// Screen Feature
const TextStyle FeatureTextStyle = TextStyle(
  color: SecondHeadingTextColor,
  fontSize: 30.0,
  height: 1.8,
  fontFamily: textFontFamilySegoeUI,
);

///Item Details Screen
const TextStyle productItemNameTextStyle = TextStyle(
  color: PriceTextColor,
  fontSize: 25.0,
  height: 1.8,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle discountPriceTextStyle = TextStyle(
  color: SliderBlueTextColor,
  fontSize: 20.0,
  height: 1.8,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle originalPriceTextStyle = TextStyle(
  color: PriceTextColor,
  fontSize: 18.0,
  height: 1.8,
  decoration: TextDecoration.lineThrough,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle ReviewWhiteTextStyle = TextStyle(
  color: ButtonWhiteTextColor,
  fontSize: 18.0,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle productReviewTextStyle = TextStyle(
  color: PriceTextColor,
  fontSize: 18.0,
  height: 1,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle productTotalReviewTextStyle = TextStyle(
  color: SliderBlueTextColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  height: 1,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle productDescriptionTextStyle = TextStyle(
  color: PriceTextColor,
  fontSize: 16.0,
  height: 1.2000000476837158,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle productDescriptionDetailsTextStyle = TextStyle(
  color: SecondHeadingTextLightColor,
  fontSize: 14.0,
  height: 1.6428571428571428,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle moreTextStyle = TextStyle(
  color: MoreBlueTextColor,
  fontWeight: FontWeight.w700,
  fontSize: 14.0,
  height: 1.6428571428571428,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle SelectSizeTextStyle = TextStyle(
  color: PriceTextColor,
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle buyNowTextStyle = TextStyle(
  color: ButtonWhiteTextColor,
  fontWeight: FontWeight.w600,
  fontSize: 20.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle addToCartTextStyle = TextStyle(
  color: PriceTextColor,
  fontWeight: FontWeight.w600,
  fontSize: 20.0,
  fontFamily: textFontFamilySegoeUI,
);

///Cart
const TextStyle TitleTextStyleCartScreen = TextStyle(
  color: SecondHeadingTextColor,
  height: 1.2000000476837158,
  fontSize: 16.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle SubTitleTextStyleCartScreen = TextStyle(
  color: ProductSubHeadingTextColor,
  height: 1.2000000476837158,
  fontSize: 16.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle priceTextStyleCartScreen = TextStyle(
  color: PriceBlueTextColor,
  height: 1.2000000476837158,
  fontSize: 16.0,
  fontFamily: textFontFamilySegoeUI,
);
const TextStyle counterTextStyleCartScreen = TextStyle(
  fontFamily: textFontFamilyNunitoSans,
  fontSize: 20,
  color: counterCartTextColor,
  height: 1.2000000476837158,
);

// Skip Button
const TextStyle skipButtonTextStyle = TextStyle(
  color: abc_Color9,
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  height: 1,
  fontFamily: textFontFamilySegoeUI,
);

const TextStyle veryGoodStyle = TextStyle(color: Colors.black, fontSize: 18.0);
