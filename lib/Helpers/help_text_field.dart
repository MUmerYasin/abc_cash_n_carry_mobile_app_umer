import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.text,
      this.hintText,
      this.validate,
      this.obsure,
      this.iconss,
      this.inputText,
      this.format})
      : super(key: key);

  final String text;
  final validate;
  final obsure;
  final inputText;
  final format;
  final iconss;
  final String? hintText;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        cursorColor: HeadingTextColor,

        // cursorHeight: 30.0,
        validator: (widget.validate),
        keyboardType: (widget.inputText),
        inputFormatters: [LengthLimitingTextInputFormatter(widget.format)],

        obscureText: (widget.obsure),
        minLines: 1,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: loginHintTextFieldStyle,
            border: InputBorder.none,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TextFieldBorderColor, width: 1.5),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TextFieldBorderColor, width: 1.5),
            ),
            contentPadding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),
            labelText: (widget.text),
            labelStyle: loginTextFieldStyle,
            // focusColor:TextFieldTitleColor,
            // hoverColor:TextFieldTitleColor,
            suffixIcon: (widget.iconss)),
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
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Container(
            // Remove Stack
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 0.75),
                )
              ],
              color: Colors.white,
            ),

            // style: NeumorphicStyle(
            //   color: Colors.white,
            // ),
            // elevation: 7,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8)
            // ),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              minLines: 1,
              decoration: InputDecoration(
                  hintText: aBC_Search,
                  labelStyle: SearchTextFieldStyle,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 3),
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 10),
                    child: Icon(CupertinoIcons.search),
                  )),
            )),
      ),
    );
  }
}


/// Custom Text Fields (Provided by Sir Usama )
class CustomFields extends StatefulWidget {
  final IconData? prefixIcon;
  final IconData? postfixIcon;
  final String? labelText;
  final String? hintText;
  final double width;
  final Function(String)? onchange;
  final bool obscure;
  final TextInputType? type;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? length;
  final TextInputAction textInputAction;

  CustomFields({
    this.focusNode = null,
    this.labelText,
    this.hintText,
    this.type,
    this.controller,
    this.width = double.infinity,
    this.prefixIcon = null,
    this.postfixIcon = null,
    this.onchange,
    this.obscure = false,
    this.length,
    this.textInputAction = TextInputAction.done,
  });

  @override
  _CustomFieldsState createState() => _CustomFieldsState();
}

class _CustomFieldsState extends State<CustomFields> {
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (widget.labelText == null)
                ? Container()
                : Text(
                    widget.labelText!,
                    style: TextStyle(color: TextFieldTitleColor),
                  ),
            Container(
              margin: EdgeInsets.only(top: 6.0),
              padding: EdgeInsets.only(left: 4.0, right: 4.0),
              // height: widget.height,
              width: widget.width,
              child: TextField(
                minLines: 1,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(widget.length)
                ],
                onChanged: widget.onchange,
                controller: widget.controller,
                obscureText: widget.obscure,
                keyboardType: widget.type,
                focusNode: widget.focusNode,
                textInputAction: widget.textInputAction,

                // autovalidateMode: AutovalidateMode.always, validator: (input) => input.isValidEmail() ? null : "Check your email",
                // validator: (value){
                //   if(value.isEmpty){
                //     return 'Field can not be Empty';
                //   }
                // },
                style: TextStyle(color: Color(0xFF727272), fontSize: 14.0),
                // cursorColor: Color(0xFF7f7f7f),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),
                  // errorText: _validate ? 'Value Can\'t Be Empty' : null,

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),


                  fillColor: Colors.white,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Color(0xFF7f7f7f)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFdedede),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFdedede),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  prefixIcon: null,
                  //Icon(widget.prefixIcon,),
                  suffixIcon: null, // Icon(widget.postfixIcon)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
