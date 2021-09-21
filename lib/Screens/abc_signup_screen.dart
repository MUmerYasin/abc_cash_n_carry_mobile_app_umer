import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'abc_home_version_1_screen.dart';

class ABCSignupScreen extends StatefulWidget {
  const ABCSignupScreen({Key? key}) : super(key: key);

  @override
  _ABCSignupScreenState createState() => _ABCSignupScreenState();
}

class _ABCSignupScreenState extends State<ABCSignupScreen> {
  GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      appBar: CustomBackScreenButton(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 10.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Form(
            key: signupKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///screen Title Login
                Text(screenTitlesSignUp, style: loginStyle),

                /// NAME Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
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

                /// Email Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: CustomTextField(
                    text: aBC_StringEmail,
                    inputText: TextInputType.emailAddress,
                    hintText: aBC_StringEmailValues,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringEmailRequired),
                          ),
                        );
                      }
                      if (value) {
                        if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: abc_Color9,
                              content: Text(aBC_Validate_StringCorrectEmail),
                            ),
                          );
                        }
                      }
                    },
                    obsure: false,
                  ),
                ),

                /// Password Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: CustomTextField(
                    text: aBC_StringPassword,
                    inputText: TextInputType.visiblePassword,
                    hintText: aBC_StringPasswordValues,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: abc_Color9,
                            content: Text(aBC_Validate_StringEmailRequired)));
                      }
                    },
                    obsure: _isVisible,
                    iconss: IconButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        });
                      },
                      icon: _isVisible
                          ? Icon(
                              Icons.remove_red_eye,
                              color: TextFieldTitleColor,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: TextFieldTitleColor,
                            ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),

                /// Signup Button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: aBC_StringSignup,
                      onPressed: () {
                        setState(() {
                          if (signupKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      ABCHomeVersionOneScreen()),
                            );
                          }
                        });
                      },
                    ),
                  ),
                ),

                /// String Do Not Have An Account /// Signup
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: aBC_StringAlreadyHaveAnAccount,
                          style: notHaveAccountStyle,
                          children: [
                            /// Login
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => ABCLoginScreen()),
                                  );
                                },
                              text: aBC_StringLogin,
                              style: notHaveAccountSignUpStyle,
                            )
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
