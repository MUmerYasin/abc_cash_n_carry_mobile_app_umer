import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/custom_toaster.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
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
  TextEditingController _signupTextFieldController = TextEditingController();
  TextEditingController _signupEmailTextFieldController =
      TextEditingController();
  TextEditingController _signupPasswordTextFieldController =
      TextEditingController();
TextEditingController _signupSecondPasswordTextFieldController =
      TextEditingController();
  TextEditingController _signupAddressFieldController = TextEditingController();


  FocusNode _signupTextFieldFocusNode = FocusNode();
  FocusNode _signupEmailTextFieldFocusNode = FocusNode();
  FocusNode _signupPasswordTextFieldFocusNode = FocusNode();
  FocusNode _signupSecondPasswordTextFieldFocusNode = FocusNode();
  FocusNode _signupAddressFieldFocusNode = FocusNode();


  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _signupTextFieldController.dispose();
    _signupEmailTextFieldController.dispose();
    _signupPasswordTextFieldController.dispose();
    _signupSecondPasswordTextFieldController.dispose();
    _signupAddressFieldController.dispose();

    _signupTextFieldFocusNode.dispose();
    _signupEmailTextFieldFocusNode.dispose();
    _signupPasswordTextFieldFocusNode.dispose();
    _signupSecondPasswordTextFieldFocusNode.dispose();
    _signupAddressFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ButtonWhiteTextColor,
        appBar: CustomBackScreenButton(),
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
                    /// Skips
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
                    Text(screenTitlesSignUp, style: loginStyle),

                    /// NAME Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringName,
                        hintText: aBC_StringNameValue,
                        obscure: false,
                        controller: _signupTextFieldController,
                        focusNode: _signupTextFieldFocusNode,
                        type: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),


                    // /// NAME Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 40,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringName,
                    //     inputText: TextInputType.name,
                    //     hintText: aBC_StringNameValue,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content: Text(aBC_Validate_StringUserNameRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    // /// Email Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 25,
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
                    //       if (value) {
                    //         if (RegExp(
                    //                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //             .hasMatch(value)) {
                    //         } else {
                    //           ScaffoldMessenger.of(context).showSnackBar(
                    //             SnackBar(
                    //               backgroundColor: abc_Color9,
                    //               content: Text(aBC_Validate_StringCorrectEmail),
                    //             ),
                    //           );
                    //         }
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),
                    //
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
                    //     // obsure: _isVisible,
                    //     // iconss: IconButton(
                    //     //   onPressed: () {
                    //     //     setState(() {
                    //     //       setState(() {
                    //     //         _isVisible = !_isVisible;
                    //     //       });
                    //     //     });
                    //     //   },
                    //     //   icon: _isVisible
                    //     //       ? Icon(
                    //     //           Icons.remove_red_eye,
                    //     //           color: TextFieldTitleColor,
                    //     //         )
                    //     //       : Icon(
                    //     //           Icons.visibility_off,
                    //     //           color: TextFieldTitleColor,
                    //     //         ),
                    //     // ),
                    //   ),
                    // ),

                    /// Email Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringEmail,
                        hintText: aBC_StringEmailValues,
                        obscure: false,
                        controller: _signupEmailTextFieldController,
                        focusNode: _signupEmailTextFieldFocusNode,
                        type: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    /// Password Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPassword,
                        hintText: aBC_StringPasswordValues,
                        obscure: _isObscure,
                        controller: _signupPasswordTextFieldController,
                        focusNode: _signupPasswordTextFieldFocusNode,
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

                    /// Second Password Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPassword,
                        hintText: aBC_StringPasswordValues,
                        obscure: _isObscure,
                        controller: _signupSecondPasswordTextFieldController,
                        focusNode: _signupSecondPasswordTextFieldFocusNode,
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

                    /// Address Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringAddress,
                        hintText: aBC_StringSecondAddressValue,
                        obscure: false,
                        controller: _signupAddressFieldController,
                        focusNode: _signupAddressFieldFocusNode,
                        type: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    /// Signup Button
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: MainCustomButton(
                          child: aBC_StringSignup,
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
                                            builder: (context) =>
                                                ABCLoginScreen()),
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
        ),
      ),
    );
  }

  _onButtonPressed() {
    if (_signupTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Name');
      _signupTextFieldFocusNode.requestFocus();
      return false;
    }
    else if (_signupEmailTextFieldController.text.isEmpty ||
        !_validateEmail(_signupEmailTextFieldController.text)) {
      failedSnackBar(context, msg: ' Enter Valid Email address');
      _signupEmailTextFieldFocusNode.requestFocus();
      return false;
    }

    else if (_signupPasswordTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter New Password");
      _signupPasswordTextFieldFocusNode.requestFocus();
      return false;
    }

    else if (_signupSecondPasswordTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: "Please Enter Again New Password");
      _signupSecondPasswordTextFieldFocusNode.requestFocus();
      return false;
    }

    else if (_signupPasswordTextFieldController.text.length < 6) {
      failedSnackBar(context, msg: "Enter Valid Password");
      _signupPasswordTextFieldFocusNode.requestFocus();
      return false;
    }

    else if (_signupSecondPasswordTextFieldController.text.length < 6) {
      failedSnackBar(context, msg: "Enter Valid Password");
      _signupSecondPasswordTextFieldFocusNode.requestFocus();
      return false;
    }

    else if (_signupPasswordTextFieldController.text!= _signupSecondPasswordTextFieldController.text) {
      failedSnackBar(context, msg: "Both Passwords NOT match");
      _signupSecondPasswordTextFieldFocusNode.requestFocus();
      return false;
    }

    if (_signupAddressFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Address');
      _signupAddressFieldFocusNode.requestFocus();
      return false;
    }

    else {
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
