import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
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
import 'package:flutter/services.dart';

import 'abc_home_version_1_screen.dart';

class ABCUserProfileScreen extends StatefulWidget {
  const ABCUserProfileScreen({Key? key}) : super(key: key);

  @override
  _ABCUserProfileScreenState createState() => _ABCUserProfileScreenState();
}

class _ABCUserProfileScreenState extends State<ABCUserProfileScreen> {
  TextEditingController _nameTextFieldController = TextEditingController();
  TextEditingController _addressLineTextFieldController =
      TextEditingController();
  TextEditingController _cityTextFieldController = TextEditingController();
  TextEditingController _genderTextFieldController = TextEditingController();
  TextEditingController _emailTextFieldController = TextEditingController();
  TextEditingController _phoneNumberTextFieldController =
      TextEditingController();

  FocusNode _nameTextFieldFocusNode = FocusNode();
  FocusNode _addressLineTextFieldFocusNode = FocusNode();
  FocusNode _cityTextFieldFocusNode = FocusNode();
  FocusNode _genderTextFieldFocusNode = FocusNode();
  FocusNode _emailTextFieldFocusNode = FocusNode();
  FocusNode _phoneNumberTextFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameTextFieldController.dispose();
    _addressLineTextFieldController.dispose();
    _cityTextFieldController.dispose();
    _genderTextFieldController.dispose();
    _emailTextFieldController.dispose();
    _phoneNumberTextFieldController.dispose();

    _nameTextFieldFocusNode.dispose();
    _addressLineTextFieldFocusNode.dispose();
    _cityTextFieldFocusNode.dispose();
    _genderTextFieldFocusNode.dispose();
    _emailTextFieldFocusNode.dispose();
    _phoneNumberTextFieldFocusNode.dispose();

    super.dispose();
  }

  String? selectedMission = 'Gender';

// String? doYouHoldAnyOfTheseTitle = '';
// String? whatIsYourDayJob = '';
  String? description = aBC_StringWomanTShirt;

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///screen Title Login
                    Text(screenTitlesProfile, style: loginStyle),

                    /// NAME Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringName,
                        hintText: aBC_StringNameValue,
                        obscure: false,
                        controller: _nameTextFieldController,
                        focusNode: _nameTextFieldFocusNode,
                        type: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

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

                    /// Address lane Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringAddressLine,
                        hintText: aBC_StringAddressLineValue,
                        obscure: false,
                        controller: _addressLineTextFieldController,
                        focusNode: _addressLineTextFieldFocusNode,
                        type: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

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
                    //             Text(aBC_Validate_StringAddressLineRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    /// City Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringCity,
                        hintText: aBC_StringCityValue,
                        obscure: false,
                        controller: _cityTextFieldController,
                        focusNode: _cityTextFieldFocusNode,
                        type: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

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

                    /// Gender Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 6.0),
                            // padding: EdgeInsets.only(left: 3.0, ),
                            child: Text(
                              aBC_StringGender,
                              style: TextStyle(
                                color: TextFieldTitleColor,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: DropdownButton<String>(
                              focusNode: _genderTextFieldFocusNode,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 25.0,
                              ),
                              underline: Divider(
                                thickness: 1.5,
                                height: 3.0,
                              ),
                              isExpanded: true,
                              hint: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  selectedMission!,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 14.0,
                                  ),
                                  // style: TextStyle(),
                                ),
                              ),
                              items: genderType.map((String? val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  alignment: AlignmentDirectional.center,
                                  enabled: true,
                                  onTap: () {
                                    setState(() {
                                      selectedMission = val;
                                      _genderTextFieldController.text = val!;
                                    });
                                  },
                                  child: Text(
                                    val.toString(),
                                    style: TextStyle(
                                      // color:TextFieldTitleColor,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Email Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringEmail,
                        hintText: aBC_StringEmailValues,
                        obscure: false,
                        controller: _emailTextFieldController,
                        focusNode: _emailTextFieldFocusNode,
                        type: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),

                    // /// Email Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 16,
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

                    /// Phone Number Custom Text Field
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: CustomFields(
                        labelText: aBC_StringPhoneNumber,
                        hintText: aBC_StringPhoneNumberValue,
                        obscure: false,
                        controller: _phoneNumberTextFieldController,
                        focusNode: _phoneNumberTextFieldFocusNode,
                        type: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                      ),
                    ),

                    // /// Phone Number Custom Text Field
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 16,
                    //   ),
                    //   child: CustomTextField(
                    //     text: aBC_StringPhoneNumber,
                    //     inputText: TextInputType.phone,
                    //     hintText: aBC_StringPhoneNumberValue,
                    //     validate: (value) {
                    //       if (value!.isEmpty) {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: abc_Color9,
                    //             content:
                    //             Text(aBC_Validate_StringPhoneNumberRequired),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     obsure: false,
                    //   ),
                    // ),

                    SizedBox(
                      height: 8.0,
                    ),

                    /// Add Profile Button
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: MainCustomButton(
                          child: screenTitlesAddProfile,
                          onPressed: () async {
                            bool validateResult = _validateCompleteForm();
                            if (validateResult) {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        ABCHomeVersionOneScreen()),
                              );
                            }

                            // }
                            // });
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
    if (_nameTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Name');
      _nameTextFieldFocusNode.requestFocus();
      return false;
    } else if (_addressLineTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Street Number');
      _addressLineTextFieldFocusNode.requestFocus();
      return false;
    } else if (_cityTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your City Name');
      _cityTextFieldFocusNode.requestFocus();
      return false;
    } else if (_genderTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Select Gender');
      _genderTextFieldFocusNode.requestFocus();
      return false;
    } else if (_emailTextFieldController.text.isEmpty ||
        _validateEmail(_emailTextFieldController
            .text)) //!_validateEmail(_emailTextFieldController.text)
    {
      failedSnackBar(context, msg: 'Please Enter Your Email address');
      _emailTextFieldFocusNode.requestFocus();
      return false;
    }

    // else if (RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
    //   // r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    //   dotAll: true,).hasMatch(_emailTextFieldController.text)) //!_validateEmail(_emailTextFieldController.text)
    // {

    // else if (_validateEmail(_emailTextFieldController.text)){
    //   print('Write a valid Email address');
    //   _emailTextFieldFocusNode.requestFocus();
    //   return false;
    // }

    else if (_phoneNumberTextFieldController.text.isEmpty) {
      failedSnackBar(context, msg: 'Please Enter Your Phone Number');
      _phoneNumberTextFieldFocusNode.requestFocus();
      return false;
    } else {
      return true;
    }
  }

  bool _validateEmail(String emailText) {
    if (emailText.isEmpty) {
      return false;
    }

    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailText)) {
      return true;
    } else {
      return false;
    }
  }
}
