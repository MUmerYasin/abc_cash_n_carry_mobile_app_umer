import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
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
  TextEditingController _addressLineTextFieldController = TextEditingController();
  TextEditingController _cityTextFieldController = TextEditingController();
  TextEditingController _genderTextFieldController = TextEditingController();
  TextEditingController _emailTextFieldController = TextEditingController();
  TextEditingController _phoneNumberTextFieldController = TextEditingController();

  FocusNode _nameTextFieldFocusNode = FocusNode();
  FocusNode _addressLineTextFieldFocusNode = FocusNode();
  FocusNode _cityTextFieldFocusNode = FocusNode();
  FocusNode _genderTextFieldFocusNode = FocusNode();
  FocusNode _emailTextFieldFocusNode = FocusNode();
  FocusNode _phoneNumberTextFieldFocusNode = FocusNode();



String? selectedMission = '';
// String? doYouHoldAnyOfTheseTitle = '';
// String? whatIsYourDayJob = '';
  String? description=aBC_StringWomanTShirt;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      appBar: CustomAppBarBackAndNotificationButtons(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 0.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      type:TextInputType.name,
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
                    type:TextInputType.streetAddress,
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
                    type:TextInputType.streetAddress,
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
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      isExpanded: true,
                      hint: Text(
                        aBC_StringGender!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      // style: TextStyle(),
                      ),
                      items: genderType.map((String? val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          onTap: () {
                            selectedMission = val;
                            setState(() {});
                          },
                          child: new Text(
                            val.toString(),
                          ),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
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
                    type:TextInputType.emailAddress,
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
                    type:TextInputType.phone,
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
                    child: SmallBlueBackgroundButton(
                      child: screenTitlesAddProfile,
                      onPressed: () {
                        setState(() {
                          // if (signupKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      ABCHomeVersionOneScreen()),
                            );
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
    );
  }
}
