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

/// Categories List
/// List of Man, Women, Kids
class CustomCategoriesListView extends StatelessWidget {
  const CustomCategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: double.infinity,
      color: Colors.white,
      // child: ListView(
      //   scrollDirection: Axis.horizontal,
      //   shrinkWrap: true,
      //   children: [
      //     CustomCategoriesListViewSingleItems(
      //       listViewText: aBC_ListViewHeadingStringFemale,
      //       imagePaths: imagePathPngImage1,
      //       linearGradientColorOne: pinkLinearGradientColors,
      //       linearGradientColorTwo: pinkLightLinearGradientColors,
      //       screen: ABCFeaturedScreen(),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     CustomCategoriesListViewSingleItems(
      //       listViewText: aBC_ListViewHeadingStringMale,
      //       imagePaths: imagePathPngImage2,
      //       linearGradientColorOne: abc_CategoriesListViewRed,
      //       linearGradientColorTwo: abc_CategoriesListViewDarkRed,
      //       screen: ABCFavoriteScreen(),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     CustomCategoriesListViewSingleItems(
      //       listViewText: aBC_ListViewHeadingStringKids,
      //       imagePaths: imagePathPngImage3,
      //       linearGradientColorOne: abc_CategoriesListViewDarkGreen,
      //       linearGradientColorTwo: abc_CategoriesListViewGreen,
      //       screen: ABCFeaturedScreen(),
      //     ),
      //   ],
      // ),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return CustomCategoriesListViewSingleItems(
            listViewText: categoriesNames[i],
            imagePaths: imgListCategories[i],
            linearGradientColorOne: customCategoriesFirstColors[i],
            linearGradientColorTwo: customCategoriesSecondColors[i],
            screen: ABCFeaturedScreen(),
          );
        },
        itemCount: categoriesNames.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
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
                child: Image.asset(
                  imagePaths,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
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
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
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

// /// Feature Screen
// /// All Featured Product Generate
// class FeatureScreenScrollViewProducts extends StatelessWidget {
//   const FeatureScreenScrollViewProducts({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.7,
//       child: CustomScrollView(
//         slivers: <Widget>[
//           SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 16.0,
//               crossAxisSpacing: 16.0,
//               childAspectRatio: MediaQuery.of(context).size.width / 500,
//               // (MediaQuery.of(context).size.height / 0.5),
//             ),
//             delegate: SliverChildListDelegate(
//               [
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsScreen(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// /// Favorite Screen
// /// All Favorite Product Generate
// class FavoriteScreenScrollViewProducts extends StatelessWidget {
//   const FavoriteScreenScrollViewProducts({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.9,
//       child: CustomScrollView(
//         slivers: <Widget>[
//           SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 16.0,
//               crossAxisSpacing: 16.0,
//               childAspectRatio: MediaQuery.of(context).size.width / 500,
//               // (MediaQuery.of(context).size.height / 0.5),
//             ),
//             delegate: SliverChildListDelegate(
//               [
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage1,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage2,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage3,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage4,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage6,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage7,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//                 CustomProductListViewSingleItems(
//                   priceText: aBC_StringPrice,
//                   nameText: aBC_StringWomanTShirt,
//                   imagePaths: imagePathProductImage5,
//                   screen: ABCItemDetailsAddToCardScreen(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

/// All Add to Cart Products Show
/// Cart Screen
class AddToCartProductsShow extends StatefulWidget {
  const AddToCartProductsShow({Key? key}) : super(key: key);

  @override
  State<AddToCartProductsShow> createState() => _AddToCartProductsShowState();
}

class _AddToCartProductsShowState extends State<AddToCartProductsShow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
            addAutomaticKeepAlives: true,
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
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

///
/// Feature Products Show In Home Page
class FeatureProductsShowInHomePage extends StatelessWidget {
  const FeatureProductsShowInHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 4.0),
          height: 210.0,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: CustomProductListViewSingleItems(
                  imagePaths: imgListProductsImage[i],
                  priceText: listOfDiscountProductsPrice[i],
                  nameText: listProductName[i],
                  screen: ABCItemDetailsAddToCardScreen(
                    productName: listProductName[i],
                    originalPriceText: listOfOriginalProductsPrice[i],
                    discountPriceText: listOfDiscountProductsPrice[i],
                    productImagePath: [
                      imgListProductsImage[i],
                      imgListProductsImage[i],
                      imgListProductsImage[i]
                    ],
                  ),
                ),
              );
            },
            itemCount: listProductName.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

/// My Order Screen
/// Order that i previously, buy from Site
class MyOrderAgainListView extends StatelessWidget {
  const MyOrderAgainListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
            itemBuilder: (context, i) {
              return CustomMyOrdersOfSingleItems(
                imagePaths: imgListProductsImage[i],
                priceText: listOfDiscountProductsPrice[i],
                nameText: listProductName[i],
                subTitleText: listProductSubTitle[i],
                child: aBC_StringOrderAgain,
              );
            },
            itemCount: listProductName.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

/// Categories Screen
/// All Categories List view
class AllCategoriesScrollViewProducts extends StatelessWidget {
  const AllCategoriesScrollViewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 400,
      height: MediaQuery.of(context).size.height * 0.7,
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: MediaQuery.of(context).size.width / 180,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
          categoriesNames.length,
          (index) {
            return CustomCategoriesListViewSingleItems(
              listViewText: categoriesNames[index],
              imagePaths: imgListCategories[index],
              linearGradientColorOne: customCategoriesFirstColors[index],
              linearGradientColorTwo: customCategoriesSecondColors[index],
              screen: ABCFeaturedScreen(),
            ); // api provide you different images for any number you are giving
          },
        ),
      ),
    );
  }
}

/// Favorite Screen
/// All Favorite Product Generate
class AllFavoriteScreenScrollViewProducts extends StatelessWidget {
  const AllFavoriteScreenScrollViewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 400,
      height: MediaQuery.of(context).size.height * 0.7,
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: MediaQuery.of(context).size.width / 500,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
          listProductName.length,
          (index) {
            return CustomProductListViewSingleItems(
              priceText: listOfDiscountProductsPrice[index],
              nameText: listProductName[index],
              imagePaths: imgListProductsImage[index],
              screen: ABCItemDetailsAddToCardScreen(),
            ); // api provide you different images for any number you are giving
          },
        ),
      ),
    );
  }
}
