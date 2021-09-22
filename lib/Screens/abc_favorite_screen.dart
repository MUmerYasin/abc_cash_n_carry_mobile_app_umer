import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ABCFavoriteScreen extends StatefulWidget {
  const ABCFavoriteScreen({Key? key}) : super(key: key);

  @override
  _ABCFavoriteScreenState createState() => _ABCFavoriteScreenState();
}

class _ABCFavoriteScreenState extends State<ABCFavoriteScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarBackAndNotificationButtons(),
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 0.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Favorite Text
              Text(screenTitlesFavorite, style: FeatureTextStyle),
              SizedBox(
                height: 15.0,
              ),

              // ///All Favorite Product Generate
              // FavoriteScreenScrollViewProducts(),

              /// Test AllFavoriteScreenScrollViewProducts
              AllFavoriteScreenScrollViewProducts(),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
