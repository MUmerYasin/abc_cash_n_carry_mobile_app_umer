import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Cart
/// Picture /// Title, Sub Title, Price /// Counter /// Plus and Minus Button, Cross icon
/// Cart Screen
class CustomCartOfSingleItems extends StatefulWidget {
  String imagePaths;
  String priceText;
  String nameText;
  String subTitleText;
  Widget? screen;
  bool visibleCart = true;

  CustomCartOfSingleItems(
      {Key? key,
      required this.imagePaths,
      this.screen,
      required this.priceText,
      required this.nameText,
      required this.subTitleText})
      : super(key: key);

  @override
  State<CustomCartOfSingleItems> createState() =>
      _CustomCartOfSingleItemsState();
}

class _CustomCartOfSingleItemsState extends State<CustomCartOfSingleItems> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    // void _decrementCounter(_) {
    //   setState(() {
    //     counter--;
    //   });
    // }
    //
    // void _incrementCounter(_) {
    //   setState(() {
    //     counter++;
    //   });
    // }
    return
        // GestureDetector(
        // child:
        Visibility(
      visible: widget.visibleCart,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          height: 130.0,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox(
                    height: 110.0,
                    width: 110.0,
                    child: Image.asset(
                      widget.imagePaths,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                ),
                // SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Product Name
                    Text(
                      widget.nameText,
                      style: TitleTextStyleCartScreen,
                      textAlign: TextAlign.left,
                    ),

                    /// SubTitle
                    Text(
                      // ,
                      widget.subTitleText,
                      style: SubTitleTextStyleCartScreen,
                      textAlign: TextAlign.left,
                    ),

                    /// Price
                    Text(
                      widget.priceText,
                      style: priceTextStyleCartScreen,
                      textAlign: TextAlign.left,
                    ),

                    /// Counter /// Plus and Minus Button
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: incrementCartTextColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              child: Icon(CupertinoIcons.minus),
                            ),
                            onTap: () {
                              setState(() {
                                if(counter>=2){
                                  counter--;
                                }

                              });
                            },
                          ),
                          Container(
                            child: Text(
                              "$counter",
                              style: counterTextStyleCartScreen,
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              child: Icon(CupertinoIcons.add),
                            ),
                            onTap: () {
                              setState(() {
                                if(counter>=1){
                                  counter++;
                                }

                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// Cross icon
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0,),
                        child: Container(
                          child: Icon(CupertinoIcons.clear_thick),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          widget.visibleCart = false;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // onTap: () {
    //   Navigator.push(context, CupertinoPageRoute(builder: (context) {
    //     return widget.screen ?? ABCLoginScreen();
    //   }));
    // },
    // );
  }
}

// void _isCounterIncreess() {
//   setState(() {
//     // if (_isFavorited) {
//     //   _favoriteCount -= 1;
//     //   _isFavorited = false;
//     // }
//   });
// }
