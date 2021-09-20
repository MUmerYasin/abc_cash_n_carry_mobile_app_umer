import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Screens/abc_cart_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_create_address_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_favorite_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_featured_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_home_version_1_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_my_order_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigator_help.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(aBC_MainMenuString_Home, style: drawerTextStyle),
                  onTap: () {
                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(
                        context: context, screen: ABCHomeVersionOneScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_Profile, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(
                        context: context, screen: ABCUserProfileScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_MyCart, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(context: context, screen: ABCCartScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_Favorite, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(context: context, screen: ABCFavoriteScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_MyOrders, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(context: context, screen: ABCMyOrdersScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_Language, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(
                        context: context, screen: ABCCreateAddressScreen());
                  },
                ),
                GestureDetector(
                  child:
                      Text(aBC_MainMenuString_Settings, style: drawerTextStyle),
                  onTap: () {
                    gotoScreen(context: context, screen: ABCFeaturedScreen());
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.clear_circled),
                    onTap: () {
                      // Navigator.push(context,
                      //     CupertinoPageRoute(builder: (context) {
                      //       return ABCLoginScreen();
                      //     }));
                      Navigator.pop(context);
                      // gotoScreen(context: context,screen:ABCPaymentScreen());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
