import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

gotoScreen({BuildContext? context, Widget? screen}) {
  Navigator.push(context!, CupertinoPageRoute(builder: (context) {
    return screen ?? ABCLoginScreen();
  }));
}

//RoundedCornerButton(
//    onPressed: () {
//         gotoScreen(context: context,screen:LocationScreen());
//    },
//    child: 'Save',
//),

class CustomSellAllRow extends StatefulWidget {
  String mainHeadingText;
  Widget? screen;

  CustomSellAllRow({Key? key, required this.mainHeadingText, this.screen})
      : super(key: key);

  @override
  _CustomSellAllRowState createState() => _CustomSellAllRowState();
}

class _CustomSellAllRowState extends State<CustomSellAllRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.mainHeadingText, style: CategoriesTextStyle),
          GestureDetector(
            child: Text(aBC_StringSeeAll, style: SeeAllTextStyle),
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return widget.screen ?? ABCLoginScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
