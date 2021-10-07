import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Screens/abc_Item_details_addtocard_Screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_featured_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'help_cart.dart';
import 'help_my_orders.dart';

///Single Categories Create,
///Background Image, Two LinearGradient Color, Text
class CustomCategoriesListViewSingleItems extends StatelessWidget {
  String imagePaths;
  Color linearGradientColorOne;
  Color linearGradientColorTwo;
  String listViewText;
  Widget? screen;

  CustomCategoriesListViewSingleItems(
      {Key? key,
      required this.imagePaths,
      required this.linearGradientColorOne,
      required this.linearGradientColorTwo,
      this.screen,
      required this.listViewText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 70.0,
          width: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5.0,
                offset: Offset(3, 3),
              )
            ],
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  imagePaths,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      begin: Alignment(-1.0, 0.06),
                      end: Alignment(1.0, 0.12),
                      colors: [linearGradientColorOne, linearGradientColorTwo],
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: abc_CategoriesListViewBlack,
                        offset: Offset(0, 15),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      listViewText,
                      style: categoriesListViewHeadingStyle,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return screen ?? ABCLoginScreen();
        }));
      },
    );
  }
}

/// Single Product Create
/// Picture, Price, Name
class CustomProductListViewSingleItems extends StatelessWidget {
  String imagePaths;
  double priceText;
  String nameText;
  Widget? screen;

  CustomProductListViewSingleItems(
      {Key? key,
      required this.imagePaths,
      this.screen,
      required this.priceText,
      required this.nameText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 210.0,
        width: 130.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                // decoration: BoxDecoration(
                //     boxShadow: <BoxShadow>[
                //       BoxShadow(
                //           color: Colors.black54,
                //           blurRadius: 15.0,
                //           offset: Offset(3, 3),
                //         spreadRadius: 40.0,
                //       )
                //     ],
                // ),
                height: 150.0,
                width: 130.0,
                // child: Image.asset(
                child: Image.network(
                  imagePaths,
                  fit: BoxFit.scaleDown,
                  // width: double.infinity,
                  width: 130.0,
                  height: 150.0,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            //   child: Text(
            //     priceText.toString(),
            //     style: ProductPriceStyle,
            //     textAlign: TextAlign.left,
            //   ),
            // ),

            /// Discount Price,
            Padding(
              padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '\$ ', style: ProductPriceStyle),
                    TextSpan(text: "$priceText", style: ProductPriceStyle),
                  ],
                ),
              ),
            ),

            Text(
              nameText,
              style: ProductPriceStyle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
      onTap: () {
        // _modalBottomSheetMenu(context);
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return screen ?? ABCItemDetailsAddToCardScreen();
            },
          ),
        );
      },
    );
  }

// /// Modal Bottom Sheet Menu Called
//   void _modalBottomSheetMenu(BuildContext context) {
//     showModalBottomSheet<void>(
//         context: context,
//         enableDrag: true,
//         elevation: 0.0,
//         backgroundColor: Colors.transparent,
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
//         // ),
//         builder: (context) {
//           return Container(
//             height: MediaQuery.of(context).size.height * 0.8,
//             color: Colors.transparent,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius:
//                     // BorderRadius.only(
//                     //   topLeft: const Radius.circular(10.0),
//                     //   topRight: const Radius.circular(10.0),
//                     // ),
//                     BorderRadius.circular(12.0),
//                 child: Container(
//                   // decoration: BoxDecoration(
//                   // ),
//                   child: ABCItemDetailsAddToCardScreen(),
//                 ),
//               ),
//             ),
//           );
//         });
//   }

}
