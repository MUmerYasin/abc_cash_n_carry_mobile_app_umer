import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abc_confirmation_screen.dart';

class ABCCheckoutScreen extends StatefulWidget {
  const ABCCheckoutScreen({Key? key}) : super(key: key);

  @override
  _ABCCheckoutScreenState createState() => _ABCCheckoutScreenState();
}

class _ABCCheckoutScreenState extends State<ABCCheckoutScreen> {
  String radioButton = '';
  int id = 1;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      appBar: CustomAppBarBackAndNotificationButtons(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 0.0,
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior : ScrollViewKeyboardDismissBehavior.onDrag,
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///screen Title Check out
              Text(screenTitlesCheckout, style: loginStyle),

              /// Add To Cart Product
              Column(
                children: [
                  Container(
                    child: ListView.builder(
                      itemBuilder: (context, i) {
                        final String item = listProductName[i];
                        return Dismissible(
                          direction: DismissDirection.startToEnd,
                          key: Key(item),
                          child: CustomCartOfSingleItems(
                              imagePaths: imgListProductsImage[i],
                              priceText: listOfDiscountProductsPrice[i],
                              nameText: listProductName[i],
                              subTitleText: listProductSubTitle[i],
                              onDelete: () {
                                setState(() {
                                  listProductName.removeAt(i);
                                  // listProductName.remove(i);
                                  // print("object");
                                });
                              }),
                          onDismissed: (direction) {
                            listProductName.removeAt(i);
                          },
                        );
                      },
                      itemCount: listProductName.length,
                      // itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ),
                ],
              ),

              ///List 1
              Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                ),
                child: Container(
                  // width: MediaQuery.of(context).size.width*9,
                  height: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: aBC_StringCityAddressValue + "\n",
                                style: AddressScreenRadioButtonStyle,
                                children: [
                                  TextSpan(
                                    text: aBC_StringHomeNoValue + "\n",
                                    style: AddressScreenRadioButtonStyle,
                                  ),
                                  TextSpan(
                                    text: aBC_StringRoadNoValue + "\n",
                                    style: AddressScreenRadioButtonStyle,
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Radio<int>(
                          value: 1,
                          groupValue: id,
                          // hoverColor: Colors.red,
                          // activeColor: Colors.red,
                          onChanged: (val) {
                            setState(
                                  () {
                                id = 1;
                                radioButton = '';
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(),

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

              SizedBox(
                height: 20.0,
              ),

              /// Continue Button
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 30),
                child: Center(
                  child: MainCustomButton(
                    child: aBC_StringBuy,
                    onPressed: () {
                      setState(() {
                        // if( loginKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ABCConfirmationScreen()),
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
