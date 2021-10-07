import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/custom_toaster.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
import 'package:abc_cash_n_carry/Screens/abc_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'abc_home_version_1_screen.dart';

class ABCLoginScreen extends StatefulWidget {
  const ABCLoginScreen({Key? key}) : super(key: key);

  @override
  _ABCLoginScreenState createState() => _ABCLoginScreenState();
}

class _ABCLoginScreenState extends State<ABCLoginScreen> {
  TextEditingController _loginEmailTextFieldController =
      TextEditingController();
  TextEditingController _loginPasswordTextFieldController =
      TextEditingController();

  FocusNode _loginEmailTextFieldFocusNode = FocusNode();
  FocusNode _loginPasswordTextFieldFocusNode = FocusNode();

  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    // FocusManager.instance.primaryFocus?.unfocus();
    // SystemChannels.textInput.invokeMethod('TextInput.hide');
    // FocusScope.of(context).unfocus();
    // FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  void dispose() {
    _loginEmailTextFieldController.dispose();
    _loginPasswordTextFieldController.dispose();
    _loginEmailTextFieldFocusNode.dispose();
    _loginPasswordTextFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomBackScreenButton(),
        backgroundColor: ButtonWhiteTextColor,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: SingleChildScrollView(
              keyboardDismissBehavior : ScrollViewKeyboardDismissBehavior.onDrag,
              physics: ClampingScrollPhysics(),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Skip Button(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child:
                              Text(aBC_StringSkip, style: skipButtonTextStyle),
                          onTap: () {
                            gotoScreen(
                                context: context,
                                screen: ABCHomeVersionOneScreen());
                          },
                        ),
                      ],
                    ),

                    ///screen Title Login
                    Text(screenTitlesLoginPage, style: loginStyle),

                    /// Email Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringEmail,
                        hintText: aBC_StringEmailValues,
                        obscure: false,
                        controller: _loginEmailTextFieldController,
                        focusNode: _loginEmailTextFieldFocusNode,
                        type: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    // /// Email Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 50,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringEmail,
                    //     inputText: TextInputType.emailAddress,
                    //     hintText: aBC_StringEmailValues,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content: Text(aBC_Validate_StringEmailRequired),
                    //           ),
                    //         );
                    //       }
                    //       if (RegExp(
                    //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //           .hasMatch(value)) {
                    //       } else {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content: Text(aBC_Validate_StringCorrectEmail),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    /// Password Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPassword,
                        hintText: aBC_StringPasswordValues,
                        obscure: _isObscure,
                        controller: _loginPasswordTextFieldController,
                        focusNode: _loginPasswordTextFieldFocusNode,
                        type: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        postfixIcon: _isObscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onPressed: () {
                          setState(
                            () {
                              _isObscure = !_isObscure;
                            },
                          );
                        },
                      ),
                    ),

                    // /// Password Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 25,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringPassword,
                    //     inputText: TextInputType.visiblePassword,
                    //     hintText: aBC_StringPasswordValues,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content: Text(aBC_Validate_StringEmailRequired)));
                    //       }
                    //     },
                    //     obsure: _isVisible,
                    //     iconss: IconButton(
                    //       onPressed: () {
                    //         setState(() {
                    //           setState(() {
                    //             _isVisible = !_isVisible;
                    //           });
                    //         });
                    //       },
                    //       icon: _isVisible
                    //           ? Icon(
                    //         Icons.remove_red_eye,
                    //         color: TextFieldTitleColor,
                    //       )
                    //           : Icon(
                    //         Icons.visibility_off,
                    //         color: TextFieldTitleColor,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: 30.0,
                    ),

                    /// Login Button
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: MainCustomButton(
                          child: aBC_StringLogin,
                          onPressed: () {
                            setState(() {
                              bool res = _onButtonPressed();
                              if (res) {
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
                              text: aBC_StringDoNotHaveAnAccount,
                              style: notHaveAccountStyle,
                              children: [
                                /// Signup
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                ABCSignupScreen()),
                                      );
                                    },
                                  text: aBC_StringSignup,
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
        ),
      ),
    );
  }

  _onButtonPressed() {
    if (_loginEmailTextFieldController.text.isEmpty ||
        !_validateEmail(_loginEmailTextFieldController.text)) {
      failedSnackBar(context, msg: 'Please Enter Your Email address');
      _loginEmailTextFieldFocusNode.requestFocus();
      return false;
    } else if (_loginPasswordTextFieldController.text.length < 6) {
      failedSnackBar(context, msg: "Enter Valid Password");
      _loginPasswordTextFieldFocusNode.requestFocus();
      return false;
    } else {
      return true;
    }
  }

  bool _validateEmail(String text) {
    if (text.isEmpty) {
      return false;
    }
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }
}
