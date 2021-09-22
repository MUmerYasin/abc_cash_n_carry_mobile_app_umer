import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/slider_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'abc_cart_screen.dart';

class ABCItemDetailsScreen extends StatefulWidget {
  const ABCItemDetailsScreen({Key? key}) : super(key: key);

  @override
  _ABCItemDetailsScreenState createState() => _ABCItemDetailsScreenState();
}

class _ABCItemDetailsScreenState extends State<ABCItemDetailsScreen> {
  int selected = 1;
  bool sizeVisible = true;
  bool colorVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarBackAndNotificationButtons(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),

            /// Carousel With Indicator
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              // padding: EdgeInsets.symmetric(vertical: 65.0),
              child: HomePageCarouselWithIndicator(
                imgList: imgListProductDetails,
                heightOfSlider: 200,
              ),
            ),

            /// Product Name
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(aBC_StringBlackTurtleneckTop,
                      style: productItemNameTextStyle),
                ],
              ),
            ),

            /// DiscountPrice, OriginalPrice
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(aBC_StringDiscountPrice, style: discountPriceTextStyle),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(aBC_StringOriginalPrice, style: originalPriceTextStyle),
                ],
              ),
            ),

            Divider(),

            /// TotalReviews, VeryGood(Title), Reviews
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 5.0, bottom: 5.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: SliderBlueTextColor,
                        ),
                        child: Text(aBC_StringTotalReviews,
                            style: ReviewWhiteTextStyle),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(aBC_StringVeryGood, style: productReviewTextStyle),
                    ],
                  ),
                  Text(aBC_StringReviews, style: productTotalReviewTextStyle),
                ],
              ),
            ),
            Divider(),

            ///Description
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(aBC_StringDescription, style: productItemNameTextStyle),
                ],
              ),
            ),

            ///Description
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, bottom: 5.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: aBC_StringAWonderfulSerenityHasTaken,
                      style: productDescriptionDetailsTextStyle,
                      children: <TextSpan>[
                        TextSpan(
                            text: aBC_Cash_N_Carry_StringMore,
                            style: moreTextStyle),
                      ],
                    ),
                    // maxLines: 4,
                    // overflow: TextOverflow.ellipsis,
                    // textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                  ),
                ],
              ),
            ),

            /// Select Size, Color
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      sizeVisible = true;
                      colorVisible = false;
                    });
                  },
                  child: Text(aBC_StringSelectSize, style: SelectSizeTextStyle),
                ),
                SizedBox(
                  width: 16.0,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      sizeVisible = false;
                      colorVisible = true;
                    });
                  },
                  child:
                      Text(aBC_StringSelectColor, style: SelectSizeTextStyle),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 10.0,
            ),

            /// Select Size Button S,M,L,XXl
            Visibility(
              visible: sizeVisible,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ///
                    SelectSizeButton(
                      onPressed: () {
                        setState(
                          () {
                            selected = 1;
                          },
                        );
                      },
                      child: aBC_StringClothSizeS,
                      color: selected == 1 ? true : false,
                    ),

                    ///
                    SelectSizeButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 2;
                            },
                          );
                        },
                        child: aBC_StringClothSizeM,
                        color: selected == 2 ? true : false),

                    ///
                    SelectSizeButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 3;
                            },
                          );
                        },
                        child: aBC_StringClothSizeL,
                        color: selected == 3 ? true : false),

                    ///
                    SelectSizeButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 4;
                            },
                          );
                        },
                        child: aBC_StringClothSizeXXL,
                        color: selected == 4 ? true : false),
                  ],
                ),
              ),
            ),

            /// Select Color
            Visibility(
              visible: colorVisible,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ///
                    SelectColorButton(
                      onPressed: () {
                        setState(
                          () {
                            selected = 1;
                          },
                        );
                      },
                      child: aBC_StringClothSizeBlack,
                      color: selected == 1 ? true : false,
                      buttonColor: Colors.black,
                    ),

                    ///
                    SelectColorButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 2;
                            },
                          );
                        },
                        child: aBC_StringClothSizeGreen,
                        color: selected == 2 ? true : false,
                      buttonColor: Colors.green,
                    ),

                    ///
                    SelectColorButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 3;
                            },
                          );
                        },
                        child: aBC_StringClothSizeRed,
                        color: selected == 3 ? true : false,
                      buttonColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: abc_Color12,
                  minimumSize: Size(MediaQuery.of(context).size.width* 0.7, 50.0),
                ),
                // backgroundColor: Color(0xFF7168C8), ABCCartScreen
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) {
                    return ABCCartScreen();
                  }));
                },
                child: Text(aBC_StringBuyNow, style: buyNowTextStyle),
            ),

            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
