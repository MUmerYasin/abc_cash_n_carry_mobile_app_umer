import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


///Custom Font
///Font Size, Style, Wright, Colors

/// Font Family
const String textFontFamilySegoeUI = "Segoe UI";
const String textFontFamilyNunitoSansBold = "NunitoSans-Bold";

///Text Style
const TextStyle welcomeToABCStyle=TextStyle(color: HeadingTextColor,fontSize: 20.0, fontFamily: textFontFamilySegoeUI,);
const TextStyle aBCStyle=TextStyle(color: HeadingTextColor,fontSize: 22.0,fontWeight: FontWeight.w600, fontFamily: textFontFamilySegoeUI,);
const TextStyle exploreUsStyle=TextStyle(color: HeadingTextColor,height: 2.0,fontSize: 18.0, fontFamily: textFontFamilySegoeUI,);
const TextStyle signUpButtonStyle=TextStyle(color: HeadingDarkTextColor,fontSize: 16.0,letterSpacing: -0.3858822937011719, fontFamily: textFontFamilySegoeUI,);
const TextStyle loginWhiteButtonStyle=TextStyle(color: ButtonWhiteTextColor,letterSpacing: -0.3858822937011719,fontSize: 16.0, fontFamily: textFontFamilySegoeUI, );
const TextStyle addCardButtonStyle=TextStyle(color: SliderBlueTextColor, fontSize: 20.0, height: 1, fontFamily: textFontFamilySegoeUI, );

const TextStyle loginStyle=TextStyle(color: ScreenMainHeadingDarkTextColor,fontSize: 30.0,height: 2.5,letterSpacing: -0.7235293006896972, fontFamily: textFontFamilySegoeUI,);

const TextStyle loginTextFieldStyle=TextStyle(color: TextFieldTitleColor,fontSize: 14.0,height: 0,letterSpacing: -0.3376470069885254, fontFamily: textFontFamilySegoeUI,);
const TextStyle loginHintTextFieldStyle=TextStyle(color: HeadingTextColor, height: 0, fontFamily: textFontFamilySegoeUI,);

const TextStyle notHaveAccountStyle=TextStyle(color: notHaveAccountTextColor,letterSpacing: -0.3376470069885254,fontSize: 14.0,height: 2.5, fontFamily: textFontFamilySegoeUI,);
const TextStyle notHaveAccountSignUpStyle=TextStyle(color: SimpleTextColor,letterSpacing: -0.3376470069885254,fontSize: 14.0,height: 2.5, fontFamily: textFontFamilySegoeUI,);

const TextStyle confirmationStyle=TextStyle(color: SecondHeadingTextColor,fontSize: 30.0,height: 2.5, fontFamily: textFontFamilySegoeUI,);
const TextStyle youHaveSuccessfullyStyle=TextStyle(color: SecondHeadingTextLightColor,letterSpacing: 0.196,fontSize: 14.0,height: 1.0, fontFamily: textFontFamilySegoeUI,);

const TextStyle SubTotalStyle=TextStyle(color: ProductSubHeadingTextColor,letterSpacing: 0.23800000000000002, fontSize: 17.0,height: 1.0, fontFamily: textFontFamilySegoeUI,);
const TextStyle SubTotalPriceStyle=TextStyle(color: SecondHeadingTextColor,letterSpacing: 0.23800000000000002, fontSize: 17.0,height: 1.0, fontFamily: textFontFamilySegoeUI,);

const TextStyle AddressScreenRadioButtonStyle=TextStyle(color: SecondHeadingTextColor,fontSize: 16.0,height: 1.5, fontFamily: textFontFamilySegoeUI,);
