import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Cart
/// Picture /// Title, Sub Title, Price /// Counter /// Plus and Minus Button, Cross icon
/// Cart Screen
class CustomMyOrdersOfSingleItems extends StatefulWidget {
  String imagePaths;
  String priceText;
  String nameText;
  String subTitleText;
  Widget? screen;
  Function()? onPressed;
  String? child;

  CustomMyOrdersOfSingleItems({
    Key? key,
    required this.imagePaths,
    this.screen,
    required this.priceText,
    required this.nameText,
    required this.subTitleText,
    this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  State<CustomMyOrdersOfSingleItems> createState() =>
      _CustomMyOrdersOfSingleItemsState();
}

class _CustomMyOrdersOfSingleItemsState
    extends State<CustomMyOrdersOfSingleItems> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return
        // GestureDetector(
        // child:
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(2, 2), // changes position of shadow
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
            mainAxisAlignment: MainAxisAlignment.start,
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
              SizedBox(
                width: 10.0,
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

                  /// Order Again
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: incrementCartTextColor,
                    ),
                    child: Container(
                      height: 45.0,
                      width: MediaQuery.of(context).size.width * .85,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 15.0,
                            spreadRadius: 4.0,
                          ),
                          // color: SimpleTextColor, offset: Offset(0, 4), blurRadius: 10.0,  spreadRadius:3.0,)
                        ],
                        borderRadius: BorderRadius.circular(6.0),
                        gradient: LinearGradient(
                          begin: Alignment(-0.95, 0.0),
                          end: Alignment(1.0, 0.0),
                          colors: [SliderBlueTextColor, abc_Color8],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: widget.onPressed,
                        child: Text(
                          widget.child ?? '',
                          style: loginWhiteButtonStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
