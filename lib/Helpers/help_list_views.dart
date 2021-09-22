import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/product_details_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Screens/abc_Item_details_Screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_Item_details_addtocard_Screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_favorite_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_featured_screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_login_screen.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
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
      child: Container(
        /// Remove Nemorfic
        height: 70.0,
        width: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 0.75),
            )
          ],
          color: Colors.white,
        ),
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
                ),
              ),
            ),
          ],
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
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          CustomCategoriesListViewSingleItems(
            listViewText: aBC_ListViewHeadingStringFemale,
            imagePaths: imagePathPngImage1,
            linearGradientColorOne: abc_CategoriesListViewLightBlue,
            linearGradientColorTwo: abc_CategoriesListViewBlue,
            screen: ABCFeaturedScreen(),
          ),
          SizedBox(
            width: 10,
          ),
          CustomCategoriesListViewSingleItems(
            listViewText: aBC_ListViewHeadingStringMale,
            imagePaths: imagePathPngImage2,
            linearGradientColorOne: abc_CategoriesListViewRed,
            linearGradientColorTwo: abc_CategoriesListViewDarkRed,
            screen: ABCFavoriteScreen(),
          ),
          SizedBox(
            width: 10,
          ),
          CustomCategoriesListViewSingleItems(
            listViewText: aBC_ListViewHeadingStringKids,
            imagePaths: imagePathPngImage3,
            linearGradientColorOne: abc_CategoriesListViewDarkGreen,
            linearGradientColorTwo: abc_CategoriesListViewGreen,
            screen: ABCFeaturedScreen(),
          ),
        ],
      ),
    );
  }
}

/// Single Product Create
/// Picture, Price, Name
class CustomProductListViewSingleItems extends StatelessWidget {
  String imagePaths;
  String priceText;
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
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Text(
                priceText,
                style: ProductPriceStyle,
                textAlign: TextAlign.left,
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
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return screen ?? ABCLoginScreen();
        }));
      },
    );
  }
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
        scrollDirection : Axis.vertical,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: MediaQuery.of(context).size.width / 500,
        physics:  ClampingScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
            imgListProductName.length,
          (index) {
            return CustomProductListViewSingleItems(
              priceText: aBC_StringPrice,
              nameText: aBC_StringWomanTShirt,
              imagePaths: imagePathProductImage1,
              screen: ABCItemDetailsAddToCardScreen(),
            ); // api provide you different images for any number you are giving
          },
        ),
      ),
    );
  }
}

/// All Add to Cart Products Show
/// Cart Screen
class AddToCartProductsShow extends StatelessWidget {
  const AddToCartProductsShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
            itemBuilder: (context, i) {
              return CustomCartOfSingleItems(
                imagePaths: imgListProductsImage[i],
                priceText: imgListProductsPrice[i],
                nameText: imgListProductName[i],
                subTitleText: imgListProductSubTitle[i],
              );
            },
            itemCount: imgListProductName.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

/// All Add to Cart Products Show
/// Cart Screen
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
                  priceText: imgListProductsPrice[i],
                  nameText: imgListProductName[i],
                  screen: ABCItemDetailsAddToCardScreen(),
                ),
              );
            },
            itemCount: imgListProductName.length,
            scrollDirection : Axis.horizontal,
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
                priceText: imgListProductsPrice[i],
                nameText: imgListProductName[i],
                subTitleText: imgListProductSubTitle[i],
                child: aBC_StringOrderAgain,
              );
            },
            itemCount: imgListProductName.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}


