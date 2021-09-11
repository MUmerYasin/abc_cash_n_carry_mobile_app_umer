import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ABCUserProfileScreen extends StatefulWidget {
  const ABCUserProfileScreen({Key? key}) : super(key: key);

  @override
  _ABCUserProfileScreenState createState() => _ABCUserProfileScreenState();
}

class _ABCUserProfileScreenState extends State<ABCUserProfileScreen> {
  GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 65.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Form(
            key: signupKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Custom Back Screen Button
                CustomBackScreenButton(),

                ///screen Title Login
                Text(screenTitlesProfile, style: loginStyle),

                /// NAME Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringName,
                    inputText: TextInputType.name,
                    hintText: aBC_StringNameValue,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringUserNameRequired),
                          ),
                        );
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// Address lane Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringAddressLine,
                    inputText: TextInputType.streetAddress,
                    hintText: aBC_StringAddressLineValue,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringAddressLineRequired),
                          ),
                        );
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// City Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringCity,
                    inputText: TextInputType.streetAddress,
                    hintText: aBC_StringCityValue,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringCityRequired),
                          ),
                        );
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// Gender Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringGender,
                    inputText: TextInputType.streetAddress,
                    hintText: aBC_StringMale,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringGenderRequired),
                          ),
                        );
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// Email Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringEmail,
                    inputText: TextInputType.emailAddress,
                    hintText:aBC_StringEmailValues,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: abc_Color9,
                          content: Text(aBC_Validate_StringEmailRequired),),);

                      }
                      if (RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {}
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: abc_Color9,
                          content: Text(aBC_Validate_StringCorrectEmail),),);
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// Phone Number Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: CustomTextField(
                    text: aBC_StringPhoneNumber,
                    inputText: TextInputType.phone,
                    hintText: aBC_StringPhoneNumberValue,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringPhoneNumberRequired),
                          ),
                        );
                      }
                    },
                    obsure: false,
                  ),
                ),

                SizedBox(
                  height: 8.0,
                ),

                /// Add Profile Button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: screenTitlesAddProfile,
                      onPressed: () {
                        setState(() {
                          if (signupKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => ABCUserProfileScreen()),
                            );
                          }
                        });
                      },
                    ),
                  ),
                ),

                SizedBox(
                  height: 8.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
