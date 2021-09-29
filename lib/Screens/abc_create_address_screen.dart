import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/custom_toaster.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abc_home_version_1_screen.dart';

class ABCCreateAddressScreen extends StatefulWidget {
  const ABCCreateAddressScreen({Key? key}) : super(key: key);

  @override
  _ABCCreateAddressScreenState createState() => _ABCCreateAddressScreenState();
}

class _ABCCreateAddressScreenState extends State<ABCCreateAddressScreen> {
  TextEditingController _addressScreenNameTextFieldController =
      TextEditingController();
  TextEditingController _addressScreenAddressLaneTextFieldController =
      TextEditingController();
  TextEditingController _addressScreenCityTextFieldController =
      TextEditingController();
  TextEditingController _addressScreenPostalCodeTextFieldController =
      TextEditingController();
  TextEditingController _addressScreenPhoneNumberTextFieldController =
      TextEditingController();

  FocusNode _addressScreenNameTextFieldFocusNode = FocusNode();
  FocusNode _addressScreenAddressLineTextFieldFocusNode = FocusNode();
  FocusNode _addressScreenCityTextFieldFocusNode = FocusNode();
  FocusNode _addressScreenPostalCodeTextFieldFocusNode = FocusNode();
  FocusNode _addressScreenPhoneNumberTextFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _addressScreenNameTextFieldController.dispose();
    _addressScreenAddressLaneTextFieldController.dispose();
    _addressScreenCityTextFieldController.dispose();
    _addressScreenPostalCodeTextFieldController.dispose();
    _addressScreenPhoneNumberTextFieldController.dispose();

    _addressScreenNameTextFieldFocusNode.dispose();
    _addressScreenAddressLineTextFieldFocusNode.dispose();
    _addressScreenCityTextFieldFocusNode.dispose();
    _addressScreenPostalCodeTextFieldFocusNode.dispose();
    _addressScreenPhoneNumberTextFieldFocusNode.dispose();

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
              physics: ClampingScrollPhysics(),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///screen Title Login
                    Text(screenTitlesCreateAddress, style: loginStyle),

                    // /// NAME Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 8,
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
                    //
                    // /// Address lane Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 16,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringAddressLine,
                    //     inputText: TextInputType.streetAddress,
                    //     hintText: aBC_StringAddressLineValue,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content:
                    //                 Text(aBC_Validate_StringAddressLineRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),
                    //
                    // /// City Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 16,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringCity,
                    //     inputText: TextInputType.streetAddress,
                    //     hintText: aBC_StringCityValue,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content: Text(aBC_Validate_StringCityRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    /// NAME Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringName,
                        hintText: aBC_StringNameValue,
                        obscure: false,
                        controller: _addressScreenNameTextFieldController,
                        focusNode: _addressScreenNameTextFieldFocusNode,
                        type: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    /// Address lane Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringAddressLine,
                        hintText: aBC_StringAddressLineValue,
                        obscure: false,
                        controller:
                            _addressScreenAddressLaneTextFieldController,
                        focusNode: _addressScreenAddressLineTextFieldFocusNode,
                        type: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    /// City Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringCity,
                        hintText: aBC_StringCityValue,
                        obscure: false,
                        controller: _addressScreenCityTextFieldController,
                        focusNode: _addressScreenCityTextFieldFocusNode,
                        type: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    /// Postal Code Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPostalCode,
                        hintText: aBC_StringPostalCodeValue,
                        obscure: false,
                        controller: _addressScreenPostalCodeTextFieldController,
                        focusNode: _addressScreenPostalCodeTextFieldFocusNode,
                        type: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    // /// Postal Code Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 16,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringPostalCode,
                    //     inputText: TextInputType.number,
                    //     hintText: aBC_StringPostalCodeValue,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content:
                    //                 Text(aBC_Validate_StringPostalCodeRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    /// Phone Number Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPhoneNumber,
                        hintText: aBC_StringPhoneNumberValue,
                        obscure: false,
                        controller:
                            _addressScreenPhoneNumberTextFieldController,
                        focusNode: _addressScreenPhoneNumberTextFieldFocusNode,
                        type: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                      ),
                    ),

                    SizedBox(
                      height: 8.0,
                    ),

                    /// Add Address Button
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: MainCustomButton(
                          child: aBC_StringAddAddress,
                          onPressed: () {
                            setState(() {
                              bool validateResult = _validateCompleteForm();
                              if (validateResult) {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          ABCHomeVersionOneScreen()),
                                );
                              }
                              // if (signupKey.currentState!.validate()) {
                              //   Navigator.push(
                              //     context,
                              //     CupertinoPageRoute(
                              //         builder: (context) =>
                              //             ABCHomeVersionOneScreen()),
                              //   );
                              // }
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
        ),
      ),
    );
  }

  bool _validateCompleteForm() {
    if (_addressScreenNameTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Name');
      _addressScreenNameTextFieldFocusNode.requestFocus();
      return false;
    } else if (_addressScreenAddressLaneTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Street Number');
      _addressScreenAddressLineTextFieldFocusNode.requestFocus();
      return false;
    } else if (_addressScreenCityTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your City Name');
      _addressScreenCityTextFieldFocusNode.requestFocus();
      return false;
    } else if (_addressScreenPostalCodeTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Postal Code');
      _addressScreenPostalCodeTextFieldFocusNode.requestFocus();
      return false;
    } else if (_addressScreenPhoneNumberTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Phone Number');
      _addressScreenPhoneNumberTextFieldFocusNode.requestFocus();
      return false;
    } else {
      return true;
    }
  }
}
