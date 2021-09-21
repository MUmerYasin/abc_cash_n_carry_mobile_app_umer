import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'abc_payment_screen.dart';

class ABCAddressScreen extends StatefulWidget {
  const ABCAddressScreen({Key? key}) : super(key: key);

  @override
  _ABCAddressScreenState createState() => _ABCAddressScreenState();
}

class _ABCAddressScreenState extends State<ABCAddressScreen> {
  String radioButton = '';
  int id = 1;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ButtonWhiteTextColor,
        appBar: CustomAppBarBackAndNotificationButtons(),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 0.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///screen Title Login
                Text(screenTitlesAddress, style: loginStyle),

                SizedBox(
                  height: 14.0,
                ),

                ///List 1
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                  ),
                  child: Container(
                    // width: MediaQuery.of(context).size.width*9,
                    height: 120.0,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: aBC_StringCityAddressValue + "\n",
                                  style: AddressScreenRadioButtonStyle,
                                  children: [
                                    TextSpan(
                                      text: aBC_StringHomeNoValue + "\n",
                                      style: AddressScreenRadioButtonStyle,
                                    ),
                                    TextSpan(
                                      text: aBC_StringRoadNoValue + "\n",
                                      style: AddressScreenRadioButtonStyle,
                                    ),
                                  ],
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Radio<int>(
                            value: 1,
                            groupValue: id,
                            // hoverColor: Colors.red,
                            // activeColor: Colors.red,
                            onChanged: (val) {
                              setState(
                                () {
                                  id = 1;
                                  radioButton = '';
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///List 2
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                  ),
                  child: Container(
                    // width: MediaQuery.of(context).size.width*9,
                    height: 120.0,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: aBC_StringCityAddress2Value + "\n",
                                  style: AddressScreenRadioButtonStyle,
                                  children: [
                                    TextSpan(
                                      text: aBC_StringHomeNo2Value + "\n",
                                      style: AddressScreenRadioButtonStyle,
                                    ),
                                    TextSpan(
                                      text: aBC_StringRoadNo2Value + "\n",
                                      style: AddressScreenRadioButtonStyle,
                                    ),
                                  ],
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Radio<int>(
                            value: 2,
                            groupValue: id,
                            // hoverColor: Colors.red,
                            // activeColor: Colors.red,
                            onChanged: (val) {
                              setState(
                                () {
                                  id = 2;
                                  radioButton = '';
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Add Card
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Center(
                    child: AddCardButton(
                      child: aBC_StringAddAddress,
                      onPressed: () {
                        setState(() {
                          // if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ABCAddressScreen()),
                          );
                          // }
                        });
                      },
                    ),
                  ),
                ),

                /// Continue To Payment Button
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: aBC_StringContinueToPayment,
                      onPressed: () {
                        setState(() {
                          // if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ABCPaymentScreen()),
                          );
                          // }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
