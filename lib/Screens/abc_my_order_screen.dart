import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_drawer.dart';
import 'package:abc_cash_n_carry/Helpers/help_list_views.dart';
import 'package:abc_cash_n_carry/Helpers/help_my_orders.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'abc_address_screen.dart';

class ABCMyOrdersScreen extends StatefulWidget {
  const ABCMyOrdersScreen({Key? key}) : super(key: key);

  @override
  _ABCMyOrdersScreenState createState() => _ABCMyOrdersScreenState();
}

class _ABCMyOrdersScreenState extends State<ABCMyOrdersScreen> {
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
              ///screen Title My Orders
              Text(screenTitlesMyOrders, style: loginStyle),

              /// Generate All List Of Previous Order
              MyOrderAgainListView(),

              /// Continue Button
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
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
    );
  }
}
