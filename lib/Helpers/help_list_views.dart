import 'package:abc_cash_n_carry/Configs/Strings/listview_builder_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Screens/abc_Item_details_addtocard_Screen.dart';
import 'package:abc_cash_n_carry/Screens/abc_featured_screen.dart';
import 'package:abc_cash_n_carry/models/single_product_model.dart';
import 'package:abc_cash_n_carry/services/api_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'help_cart.dart';
import 'help_my_orders.dart';
import 'help_single_item_of_List.dart';


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
class FeatureProductsShowInHomePage extends StatefulWidget {
  const FeatureProductsShowInHomePage({Key? key}) : super(key: key);

  @override
  State<FeatureProductsShowInHomePage> createState() => _FeatureProductsShowInHomePageState();
}

class _FeatureProductsShowInHomePageState extends State<FeatureProductsShowInHomePage> {
  late Future<SingleProductModelForJson> _singleProductModelForJSON;

  // var _responseAPI;
  @override
  void initState(){
    _singleProductModelForJSON = SingleProductApiManager().getSingleProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 4.0),
          height: 210.0,
          width: double.infinity,

          child: FutureBuilder(
            future: _singleProductModelForJSON, builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemBuilder: (context, i) {
                  // var singleProductDetails = snapshot.data!.id;
                  print(snapshot.data!.id);
                  print(snapshot.data!.image);
                  print(snapshot.data!.price);
                  print("ListView builder");
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CustomProductListViewSingleItems(
                      imagePaths: snapshot.data!.image,
                      priceText: snapshot.data!.price,
                      nameText: snapshot.data!.title,
                      screen: ABCItemDetailsAddToCardScreen(
                        productName: snapshot.data!.title,
                        originalPriceText: snapshot.data!.price,
                        discountPriceText: snapshot.data!.price,
                        productImagePath: [
                          snapshot.data!.image,
                          snapshot.data!.image,
                          snapshot.data!.image
                        ],
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.id,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              );
            }
            else
            {
              return Center(child: CircularProgressIndicator());
            }
          },



          ),

           // child: ListView.builder(
        //     itemBuilder: (context, i) {
        //       return Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 4.0),
        //         child: CustomProductListViewSingleItems(
        //           imagePaths: imgListProductsImage[i],
        //           priceText: listOfDiscountProductsPrice[i],
        //           nameText: listProductName[i],
        //           screen: ABCItemDetailsAddToCardScreen(
        //             productName: listProductName[i],
        //             originalPriceText: listOfOriginalProductsPrice[i],
        //             discountPriceText: listOfDiscountProductsPrice[i],
        //             productImagePath: [
        //               imgListProductsImage[i],
        //               imgListProductsImage[i],
        //               imgListProductsImage[i]
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //     itemCount: listProductName.length,
        //     scrollDirection: Axis.horizontal,
        //     shrinkWrap: true,
        //     physics: ClampingScrollPhysics(),
        //   ),
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
