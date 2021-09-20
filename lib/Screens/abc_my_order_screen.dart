import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_cart.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_my_orders.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Helpers/navigator_help.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'abc_address_screen.dart';
import 'abc_favorite_screen.dart';
import 'abc_featured_screen.dart';
import 'abc_login_screen.dart';

class ABCMyOrdersScreen extends StatefulWidget {
  const ABCMyOrdersScreen({Key? key}) : super(key: key);

  @override
  _ABCMyOrdersScreenState createState() => _ABCMyOrdersScreenState();
}

class _ABCMyOrdersScreenState extends State<ABCMyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 40.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Custom Back Screen Button
              CustomNotificationScreenButton(),

              ///screen Title My Orders
              Text(screenTitlesMyOrders, style: loginStyle),

              Column(
                children: [
                  Container(
                    child: ListView.builder(
                      itemBuilder: (context, i) {
                        return CustomMyOrdersOfSingleItems(
                          imagePaths: imagePathProductImage1,
                          priceText: aBC_StringPrice,
                          nameText: aBC_StringWomanTShirt,
                          subTitleText: aBC_StringLottoLTD,
                            child:aBC_StringOrderAgain,
                        );
                      },
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ),
                ],
              ),

              /// Continue Button
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 30),
                child: Center(
                  child: SmallBlueBackgroundButton(
                    child: aBC_StringContinue,
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

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
