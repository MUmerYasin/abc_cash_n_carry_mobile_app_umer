import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_appbar.dart';
import 'package:abc_cash_n_carry/Helpers/help_carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abc_Item_details_Screen.dart';
import 'abc_cart_screen.dart';

class ABCItemDetailsAddToCardScreen extends StatefulWidget {
  String productName;
  List<String> productImagePath;
  double originalPriceText;
  double discountPriceText;

  ABCItemDetailsAddToCardScreen({
    Key? key,
    this.productName = aBC_StringBlackTurtleneckTop,
    this.originalPriceText = aBC_OriginalPrice,
    this.discountPriceText = aBC_DiscountPrice,
    this.productImagePath = imgListProductsImage,
  }) : super(key: key);

  @override
  _ABCItemDetailsAddToCardScreenState createState() =>
      _ABCItemDetailsAddToCardScreenState();
}

class _ABCItemDetailsAddToCardScreenState
    extends State<ABCItemDetailsAddToCardScreen> {
  int counter = 1;
  late double temp;

  // int _selectedColor = 0;
  // int _selectedSize = 0;

  @override
  void initState() {
    super.initState();
    temp = widget.discountPriceText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarBackAndNotificationButtons(),
      body: SingleChildScrollView(
        keyboardDismissBehavior : ScrollViewKeyboardDismissBehavior.onDrag,
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
                // imgList: imgListProductDetails,
                imgList: widget.productImagePath,
                heightOfSlider: 150,
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
                  Text(widget.productName, style: productItemNameTextStyle),
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
                  // Text(aBC_StringDiscountPrice, style: discountPriceTextStyle),
                  /// Discount Price,
                  RichText(
                    text: TextSpan(
                      // style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '\$ ', style: discountPriceTextStyle),
                        TextSpan(
                            text: widget.discountPriceText.toString(),
                            style: discountPriceTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),

                  // Text(aBC_StringOriginalPrice, style: originalPriceTextStyle),
                  /// Original Price,
                  RichText(
                    text: TextSpan(
                      // style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '\$ ', style: originalPriceTextStyle),
                        TextSpan(
                            // text: widget.originalPriceText.toString(),
                            text: widget.originalPriceText.toString(),
                            style: originalPriceTextStyle),
                      ],
                    ),
                  ),
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
                  Expanded(
                      child: Text(aBC_StringDescription,
                          style: productItemNameTextStyle)),
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
                  Expanded(
                    child: Text(
                      aBC_StringAWonderfulSerenityHasTaken,
                      style: productDescriptionDetailsTextStyle,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                    ),
                  ),

                  // RichText(
                  //   text: TextSpan(
                  //     text: aBC_StringAWonderfulSerenityHasTaken,
                  //     style: productDescriptionDetailsTextStyle,
                  //     children: <TextSpan>[
                  //       TextSpan(
                  //           text: aBC_Cash_N_Carry_StringMore,
                  //           style: moreTextStyle),
                  //     ],
                  //   ),
                  //   maxLines: 4,
                  //   overflow: TextOverflow.ellipsis,
                  //   textDirection: TextDirection.rtl,
                  //   textAlign: TextAlign.left,
                  //   textHeightBehavior:
                  //       TextHeightBehavior(applyHeightToFirstAscent: false),
                  // ),
                ],
              ),
            ),

            ///// Select Size, Color
            // Divider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         setState(() {
            //           sizeVisible = true;
            //           colorVisible = false;
            //         });
            //       },
            //       child: Text(aBC_StringSelectSize, style: SelectSizeTextStyle),
            //     ),
            //     SizedBox(
            //       width: 16.0,
            //     ),
            //     TextButton(
            //       onPressed: () {
            //         setState(() {
            //           sizeVisible = false;
            //           colorVisible = true;
            //         });
            //       },
            //       child:
            //           Text(aBC_StringSelectColor, style: SelectSizeTextStyle),
            //     ),
            //   ],
            // ),
            // Divider(),
            SizedBox(
              height: 10.0,
            ),

            // /// Select Size Button S,M,L,XXl
            // Visibility(
            //   visible: sizeVisible,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         ///
            //         SelectSizeButton(
            //           onPressed: () {
            //             setState(
            //               () {
            //                 selected = 1;
            //               },
            //             );
            //           },
            //           child: aBC_StringClothSizeS,
            //           color: selected == 1 ? true : false,
            //         ),
            //
            //         ///
            //         SelectSizeButton(
            //             onPressed: () {
            //               setState(
            //                 () {
            //                   selected = 2;
            //                 },
            //               );
            //             },
            //             child: aBC_StringClothSizeM,
            //             color: selected == 2 ? true : false),
            //
            //         ///
            //         SelectSizeButton(
            //             onPressed: () {
            //               setState(
            //                 () {
            //                   selected = 3;
            //                 },
            //               );
            //             },
            //             child: aBC_StringClothSizeL,
            //             color: selected == 3 ? true : false),
            //
            //         ///
            //         SelectSizeButton(
            //             onPressed: () {
            //               setState(
            //                 () {
            //                   selected = 4;
            //                 },
            //               );
            //             },
            //             child: aBC_StringClothSizeXXL,
            //             color: selected == 4 ? true : false),
            //       ],
            //     ),
            //   ),
            // ),

            ///// Select Color Button S,M,L,XXl
            // Visibility(
            //   visible: colorVisible,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         ///
            //         SelectColorButton(
            //           onPressed: () {
            //             setState(
            //               () {
            //                 selected = 1;
            //               },
            //             );
            //           },
            //           child: aBC_StringClothSizeBlack,
            //           color: selected == 1 ? true : false,
            //           buttonColor: Colors.black,
            //         ),
            //
            //         ///
            //         SelectColorButton(
            //             onPressed: () {
            //               setState(
            //                 () {
            //                   selected = 2;
            //                 },
            //               );
            //             },
            //             child: aBC_StringClothSizeGreen,
            //             color: selected == 2 ? true : false,
            //           buttonColor: Colors.green,
            //         ),
            //
            //         ///
            //         SelectColorButton(
            //             onPressed: () {
            //               setState(
            //                 () {
            //                   selected = 3;
            //                 },
            //               );
            //             },
            //             child: aBC_StringClothSizeRed,
            //             color: selected == 3 ? true : false,
            //           buttonColor: Colors.red,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            //-------------------------------------------
            // Divider(
            //   color: Colors.black12,
            //   height: 30.0,
            //   thickness: 1.0,
            // ),
            //
            // /// Select Size, Color
            // Text(aBC_StringSize, style: veryGoodStyle),
            // SizedBox(
            //   height: 10.0,
            // ),
            // SelectSize(),
            // Divider(
            //   color: Colors.black12,
            //   height: 30.0,
            //   thickness: 1.0,
            // ),
            //
            // /// Select Color Button S,M,L,XXl
            // Text(aBC_StringColor, style: veryGoodStyle),
            // SizedBox(
            //   height: 10.0,
            // ),
            //
            // SizedBox(
            //   height: 50.0,
            //   width: double.infinity,
            //   child: ListView.builder(
            //       shrinkWrap: true,
            //       physics: ClampingScrollPhysics(),
            //       scrollDirection: Axis.horizontal,
            //       itemCount: _customColors.length,
            //       itemBuilder: (BuildContext context, int index) => Padding(
            //           padding: const EdgeInsets.only(right: 15.0),
            //           child: ColorWidget(
            //             colorr: _customColors[index],
            //             index: index,
            //             selectedColor: (selectedColorIndex) {
            //               setState(() {
            //                 _selectedColorIndex = selectedColorIndex;
            //               });
            //             },
            //             selectedIndex: _selectedColorIndex,
            //           ))),
            // ),
            //
            // Divider(
            //   color: Colors.black12,
            //   height: 30.0,
            //   thickness: 1.0,
            // ),
            //
            // SizedBox(
            //   height: 20.0,
            // ),
            //-------------------------------------------

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Divider(
                thickness: 1.4,
              ),
            ),

            /// Size Text
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                aBC_StringSize,
                style: SelectColorAndSizeStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Divider(
                thickness: 1.4,
              ),
            ),

            ///Size ListView builder
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: singleProductSize.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Text(
                          singleProductSize[index],
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Divider(
                thickness: 1.4,
              ),
            ),

            /// Colors Text
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                aBC_StringColor,
                style: SelectColorAndSizeStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Divider(
                thickness: 1.4,
              ),
            ),

            ///Colors ListView builder
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: singleProductColors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: singleProductColors[index],
                          shape: BoxShape.circle),
                      width: 50,
                      height: 50,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            /// Button Add To Card  and Buy Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ButtonAddToCardTextColor,
                    minimumSize:
                    Size(MediaQuery.of(context).size.width * 0.40, 50.0),
                  ),
                  // backgroundColor: Color(0xFF7168C8),
                  onPressed: () {
                    _modalBottomSheetMenu(context);

                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //     builder: (context) {
                    //       return ABCCartScreen();
                    //     },
                    //   ),
                    // );
                  },
                  child: Text(aBC_StringAddToCart, style: addToCartTextStyle),
                ),
                SizedBox(
                  width: 16.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: abc_Color12,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.40, 50.0),
                  ),
                  // backgroundColor: Color(0xFF7168C8),
                  onPressed: () {
                    // _modalBottomSheetMenu(context);
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return ABCCartScreen();
                        },
                      ),
                    );
                  },
                  child: Text(aBC_StringBuyNow, style: buyNowTextStyle),
                ),
              ],
            ),

            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  /// Modal Bottom Sheet Menu Called
  void _modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        isDismissible: true,
        elevation: 0.0,
        enableDrag: true,
        context: context,
        backgroundColor: Colors.transparent,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        // ),
        builder: (context) {
          return Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius:
                    // BorderRadius.only(
                    //   topLeft: const Radius.circular(10.0),
                    //   topRight: const Radius.circular(10.0),
                    // ),
                    BorderRadius.circular(12.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  // height: 600,
                  // decoration: BoxDecoration(
                  // ),
                  child: ABCItemDetailsScreen(
                    productName: widget.productName,
                    originalPriceText: widget.originalPriceText,
                    discountPriceText: widget.discountPriceText,
                    productImagePath: widget.productImagePath,
                  ),
                ),
              ),
            ),
          );
        });
  }

// void _modalBottomSheetMenu(BuildContext context) {
//   showModalBottomSheet<void>(
//       isScrollControlled: true,
//       isDismissible: true,
//       elevation: 0.0,
//       enableDrag: true,
//       context: context,
//       backgroundColor: Colors.transparent,
//       builder: (context) => Card(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12)),
//             margin: EdgeInsets.only(left: 8, right: 8, bottom: 8),
//             child: SizedBox(
//               // height: MediaQuery.of(context).size.width*0.8,
//               height: 500.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   physics: ClampingScrollPhysics(),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       /// Product Picture, Name, price
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: 90,
//                             height: 90,
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(12),
//                               child: Image.asset(
//                                 imagePathProductSlider1,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 const EdgeInsets.only(top: 8.0, left: 12),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ///Product Name
//                                 Text(
//                                   aBC_StringBlackTurtleneckTop,
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w500),
//                                   textAlign: TextAlign.left,
//                                 ),
//
//                                 /// Discount Price,
//                                 RichText(
//                                   text: TextSpan(
//                                     style: DefaultTextStyle.of(context).style,
//                                     children: <TextSpan>[
//                                       TextSpan(
//                                           text: '\$ ',
//                                           style: priceTextStyleCartScreen),
//                                       TextSpan(
//                                           text: "$priceText",
//                                           style: priceTextStyleCartScreen),
//                                     ],
//                                   ),
//                                 ),
//
//                                 /// OriginalPrice
//                                 Text(
//                                   aBC_StringDiscountPrice,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.lineThrough,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0),
//                         child: Divider(
//                           thickness: 1.4,
//                         ),
//                       ),
//
//                       /// Size Text
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0),
//                         child: Text(
//                           aBC_StringSize,
//                           style: SelectColorAndSizeStyle,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 3.0),
//                         child: Divider(
//                           thickness: 1.4,
//                         ),
//                       ),
//
//                       ///Size ListView builder
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 20.0,
//                         ),
//                         child: Container(
//                           width: double.infinity,
//                           height: 50,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: singleProductSize.length,
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 margin: EdgeInsets.only(right: 10),
//                                 decoration: BoxDecoration(
//                                     color: Colors.grey.shade200,
//                                     borderRadius: BorderRadius.circular(50)),
//                                 width: 50,
//                                 height: 50,
//                                 child: Center(
//                                   child: Text(
//                                     singleProductSize[index],
//                                     style: TextStyle(
//                                         color: Colors.black, fontSize: 15),
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0),
//                         child: Divider(
//                           thickness: 1.4,
//                         ),
//                       ),
//
//                       /// Colors Text
//                       Padding(
//                         padding: const EdgeInsets.only(left: 12.0),
//                         child: Text(
//                           aBC_StringColor,
//                           style: SelectColorAndSizeStyle,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 3.0),
//                         child: Divider(
//                           thickness: 1.4,
//                         ),
//                       ),
//
//                       ///Colors ListView builder
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: SizedBox(
//                           height: 50,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: singleProductColors.length,
//                               shrinkWrap: true,
//
//                             itemBuilder: (context, index) {
//                               return GestureDetector(
//                                 child: AnimatedContainer(
//                                   duration: Duration(milliseconds: 300),
//                                   margin: EdgeInsets.only(right: 10),
//                                   decoration: BoxDecoration(
//                                       // color: singleProductColors[index],
//                                       color: _selectedColor == index
//                                           ? singleProductColors[index]
//                                           : singleProductColors[index].withOpacity(0.6),
//                                       shape: BoxShape.circle),
//                                   width: 50,
//                                   height: 50,
//                                 ),
//                                 onTap: () {
//                                   setState(() {
//                                     _selectedColor = index;
//                                   });
//                                 },
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//
//                       /// Counter /// Plus and Minus Button
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width * 0.3,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.0),
//                               color: incrementCartTextColor,
//                             ),
//                             child: Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceAround,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 GestureDetector(
//                                   child: Container(
//                                     child: Icon(CupertinoIcons.minus),
//                                   ),
//                                   onTap: () {
//                                     setState(() {
//                                       if (counter >= 2) {
//                                         counter--;
//                                         priceText = priceText - temp;
//                                       }
//                                     });
//                                   },
//                                 ),
//                                 Container(
//                                   child: Text(
//                                     "$counter",
//                                     style: counterTextStyleCartScreen,
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   child: Container(
//                                     child: Icon(CupertinoIcons.add),
//                                   ),
//                                   onTap: () {
//                                     setState(() {
//                                       if (counter >= 1) {
//                                         counter++;
//                                         priceText = priceText + temp;
//                                       }
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//
//                       /// Button Add To Card
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               primary: ButtonAddToCardTextColor,
//                               minimumSize: Size(
//                                   MediaQuery.of(context).size.width * 0.40,
//                                   50.0),
//                             ),
//                             // backgroundColor: Color(0xFF7168C8),
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 CupertinoPageRoute(
//                                   builder: (context) {
//                                     return ABCCartScreen();
//                                   },
//                                 ),
//                               );
//                             },
//                             child: Text(aBC_StringAddToCart,
//                                 style: addToCartTextStyle),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//   );
// }

}
