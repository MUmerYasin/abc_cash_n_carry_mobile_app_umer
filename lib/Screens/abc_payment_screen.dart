import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'abc_cart_screen.dart';
import 'abc_checkout_screen.dart';

class ABCPaymentScreen extends StatefulWidget {
  const ABCPaymentScreen({Key? key}) : super(key: key);

  @override
  _ABCPaymentScreenState createState() => _ABCPaymentScreenState();
}

class _ABCPaymentScreenState extends State<ABCPaymentScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ButtonWhiteTextColor,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 65.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Custom Back Screen Button
                CustomBackScreenButton(),

                ///screen Title Login
                Text(screenTitlesPayment, style: loginStyle),

                SizedBox(
                  height: 18.0,
                ),

                /// ATM Card
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        imagePathVectorVisaCreditCard,
                        height: 170.0,
                        // width: 200.0,
                        fit: BoxFit.contain,
                        // bundle:
                        alignment: Alignment.center,
                        allowDrawingOutsideViewBox: false,
                      ),
                      // SvgPicture.asset(
                      //   imagePathCartColorLogo,
                      //   height: 82.0,
                      //   width: 82.0,
                      //   // fit : BoxFit.contain,
                      //   // bundle:
                      //   // alignment : Alignment.center,
                      //   allowDrawingOutsideViewBox: true,
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                ///Subtotal, Discount, Shipping, Total
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            aBC_StringSubtotal,
                            style: SubTotalStyle,
                            // textAlign: TextAlign.left,
                          ),
                          Text(
                            aBC_StringTotalValue,
                            style: SubTotalPriceStyle,
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            aBC_StringDiscount,
                            style: SubTotalStyle,
                            // textAlign: TextAlign.left,
                          ),
                          Text(
                            aBC_StringPercentageValue,
                            style: SubTotalPriceStyle,
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            aBC_StringShipping,
                            style: SubTotalStyle,
                            // textAlign: TextAlign.left,
                          ),
                          Text(
                            aBC_StringShippingValue,
                            style: SubTotalPriceStyle,
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            aBC_StringTotal,
                            style: SubTotalStyle,
                            // textAlign: TextAlign.left,
                          ),
                          Text(
                            aBC_StringTotalValue,
                            style: SubTotalPriceStyle,
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// Add Card
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Center(
                    child: AddCardButton(
                      child: aBC_StringAddCard,
                      onPressed: () {
                        setState(() {
                          // if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ABCCartScreen()),
                          );
                          // }
                        });
                      },
                    ),
                  ),
                ),

                /// Checkout Button
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: Center(
                    child: SmallBlueBackgroundButton(
                      child: aBC_StringCheckout,
                      onPressed: () {
                        setState(() {
                          // if( loginKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ABCCheckoutScreen()),
                          );
                          // }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
