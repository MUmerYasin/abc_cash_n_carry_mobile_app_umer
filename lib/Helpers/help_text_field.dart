import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';


class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key, required this.text, this.hintText, this.validate, this.obsure, this.Iconss, this.inputText, this.format}) : super(key: key);

  final String text;
  final validate;
  final obsure;
  final inputText;
  final format;
  final Iconss;
  final String? hintText;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {


  @override
  Widget build(BuildContext context) {

    return  SizedBox(
      width: MediaQuery.of(context).size.width*.85,
      child: TextFormField(
        cursorColor: HeadingTextColor,

        // cursorHeight: 30.0,
        validator: (widget.validate),
        keyboardType: (widget.inputText),
        inputFormatters: [LengthLimitingTextInputFormatter(widget.format)],

        obscureText: (widget.obsure) ,
        minLines: 1,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: loginHintTextFieldStyle,
            border:InputBorder.none,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TextFieldBorderColor,width: 1.5 ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TextFieldBorderColor,width: 1.5 ),
            ),
            contentPadding:  EdgeInsets.only(left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),
            labelText: (widget.text),
            labelStyle: loginTextFieldStyle,
            // focusColor:TextFieldTitleColor,
            // hoverColor:TextFieldTitleColor,
            suffixIcon: (widget.Iconss)
        ),

      ),
    );
  }
}



class SearchBarTextField extends StatefulWidget {
  const SearchBarTextField({Key? key}) : super(key: key);

  @override
  _SearchBarTextFieldState createState() => _SearchBarTextFieldState();
}

class _SearchBarTextFieldState extends State<SearchBarTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 15),
      child: Container(
        height: MediaQuery.of(context).size.height/12,
        child: Card(
            elevation: 7,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            child: TextFormField(
              minLines: 1,
              decoration: InputDecoration(
                  hintText: aBC_Cash_N_Carry_Search,
                  labelStyle: TextStyle(fontSize: 19,
                    fontFamily: textFontFamilySegoeUI,
                  ),

                  contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                    child: Icon(CupertinoIcons.search),
                  )
              ),
            )

        ),
      ),
    );
  }
}