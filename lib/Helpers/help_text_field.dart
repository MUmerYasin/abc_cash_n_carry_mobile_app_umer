import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';


class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key, required this.text, this.validate, this.obsure, this.Iconss, this.inputText, this.format}) : super(key: key);

  final String text;
  final validate;
  final obsure;
  final inputText;
  final format;
  final Iconss;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (widget.validate),
      keyboardType: (widget.inputText),
      inputFormatters: [LengthLimitingTextInputFormatter(widget.format)],
      obscureText: (widget.obsure) ,
      minLines: 1,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
          labelText: (widget.text),labelStyle:
      TextStyle(fontSize: 16,
        fontFamily: textFontFamilySegoeUI,

      ),

          suffixIcon: (widget.Iconss)
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