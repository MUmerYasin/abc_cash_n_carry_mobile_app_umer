import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Screens/abc_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ABCLoginScreen extends StatefulWidget {
  const ABCLoginScreen({Key? key}) : super(key: key);

  @override
  _ABCLoginScreenState createState() => _ABCLoginScreenState();
}

class _ABCLoginScreenState extends State<ABCLoginScreen> {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  bool _isVisible = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 100.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Form(
            key: loginKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Custom Back Screen Button
                CustomBackScreenButton(),

                ///screen Title Login
                Text(screenTitlesLoginPage, style: loginStyle),


                /// Email Custom Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: CustomTextField(
                    text: aBC_Cash_N_Carry_StringEmail,
                    inputText: TextInputType.emailAddress,
                    hintText:aBC_Cash_N_Carry_StringEmailValues,
                    validate: (value) {
                      if (value!.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: abc_cash_n_carry_Color9,
                            content: Text(aBC_Validate_StringEmailRequired),),);

                      }
                      if (RegExp(
                         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {}
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: abc_cash_n_carry_Color9,
                        content: Text(aBC_Validate_StringCorrectEmail),),);
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
                      text: aBC_Cash_N_Carry_StringPassword,
                      inputText: TextInputType.visiblePassword,
                    hintText:aBC_Cash_N_Carry_StringPasswordValues,
                      validate: (value) {
                        if (value!.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: abc_cash_n_carry_Color9,
                              content: Text(aBC_Validate_StringEmailRequired)));
                        }
                      },
                      obsure: _isVisible,
                      Iconss: IconButton(
                          onPressed: () {
                            setState(() {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            });
                          },
                          icon: _isVisible
                              ? Icon(Icons.remove_red_eye, color: TextFieldTitleColor,)
                              : Icon(Icons.visibility_off, color: TextFieldTitleColor,),),),
                ),

                SizedBox(height: 30.0,),

                /// Login Button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: aBC_Cash_N_Carry_StringLogin,
                      onPressed: () {
                        setState(() {
                          if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ABCLoginScreen()),
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
                          text: aBC_Cash_N_Carry_StringDoNotHaveAnAccount,
                          style: notHaveAccountStyle,
                          children: [
                            /// Signup
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Navigator.push(
                                  context,
                                   CupertinoPageRoute(builder: (context) => ABCSignupScreen()),
                                );
                              },
                              text: aBC_Cash_N_Carry_StringSignup,
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
