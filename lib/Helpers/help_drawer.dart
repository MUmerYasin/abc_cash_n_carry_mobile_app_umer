import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Screens/abc_address_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_confirmation_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_create_address_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_payment_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_signup_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'navigator_help.dart';



// class CustomDrawer extends StatefulWidget {
//   const CustomDrawer({Key? key}) : super(key: key);
//
//   @override
//   _CustomDrawerState createState() => _CustomDrawerState();
// }
// class _CustomDrawerState extends State<CustomDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text('Drawer Header'),
//               ),
//               ListTile(
//                 title: const Text('Item 1'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Item 2'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//
//   }
// }


// class NavigationDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//
//           ListTile(
//             title: Text('App version 1.0.0'),
//             onTap: () {},
//           ),
//
//           Divider(),
//
//           ListTile(
//             title: Text('App version 1.0.0'),
//             onTap: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }


//
// class ListenToDrawerEvent extends StatefulWidget {
//   @override
//   ListenToDrawerEventState createState() {
//     return ListenToDrawerEventState();
//   }
// }
// class ListenToDrawerEventState extends State<ListenToDrawerEvent> {
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   static final List<String> _listViewData = [
//     "Inducesmile.com",
//     "Flutter Dev",
//     "Android Dev",
//     "iOS Dev!",
//     "React Native Dev!",
//     "React Dev!",
//     "express Dev!",
//     "Laravel Dev!",
//     "Angular Dev!",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.all(10.0),
//           children: _listViewData
//               .map((data) => ListTile(
//             title: Text(data),
//           ))
//               .toList(),
//         ),
//       ),
//
//     );
//   }
// }




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
                  child: Text(aBC_MainMenuString_Home,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCPaymentScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_Profile,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCConfirmationScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_MyCart,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCAddressScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_Favorite,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCCreateAddressScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_MyOrders,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCSignupScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_Language,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCUserProfileScreen());
                  },
                ),
                GestureDetector(
                  child: Text(aBC_MainMenuString_Settings,style: drawerTextStyle),
                  onTap: () {

                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) {
                    //       return ABCLoginScreen();
                    //     }));

                    gotoScreen(context: context,screen:ABCLoginScreen());
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