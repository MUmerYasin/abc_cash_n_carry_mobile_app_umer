import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';


//use in All Buttons
class SmallBlueBackgroundButton extends StatelessWidget {
  Function()? onPressed;
  String? child;

  SmallBlueBackgroundButton({
    this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
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
        onPressed: onPressed,
        child: Text(
          child ?? '',
          style: loginWhiteButtonStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

//use in Back Button in top of all screen
class CustomBackScreenButton extends StatelessWidget {
  const CustomBackScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            imagePathBackScreenButton,
          ),
        ),
      ],
    );
  }
}

//use in Notification button in top of all screen
class CustomNotificationScreenButton extends StatelessWidget {
  // String _selection = "Value1";

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  CustomNotificationScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
            // _scaffoldKey.currentState!.openDrawer();
            // NavDrawer();

            // ListenToDrawerEvent();
            // Scaffold(
            //   drawer: NavigationDrawer(),
            // );
            // CustomDrawer();
            // Navigator.pop(context);

            // PopupMenuButton<String>(
            //   onSelected: (String value) {
            //     // setState(() {
            //     //   _selection = value;
            //     // });
            //     // setState(() { _selection = value; });
            //   },
            //
            //
            //   // child: ListTile(
            //   //   leading: IconButton(
            //   //     icon: Icon(Icons.add_alarm),
            //   //     onPressed: () {
            //   //       print('Hello world');
            //   //     },
            //   //   ),
            //   //   title: Text('Title'),
            //   //   // subtitle: Column(
            //   //   //   children: <Widget>[
            //   //   //     Text('Sub title'),
            //   //   //     Text(_selection == null ? 'Nothing selected yet' : _selection.toString()),
            //   //   //   ],
            //   //   // ),
            //   //   trailing: Icon(Icons.account_circle),
            //   // ),
            //   itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            //     const PopupMenuItem<String>(
            //       value: 'Value1',
            //       child: Text('Choose value 1'),
            //     ),
            //     const PopupMenuItem<String>(
            //       value: 'Value2',
            //       child: Text('Choose value 2'),
            //     ),
            //     const PopupMenuItem<String>(
            //       value: 'Value3',
            //       child: Text('Choose value 3'),
            //     ),
            //   ],
            // );
          },
          child: SvgPicture.asset(
            imagePathMenuBar,
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(CupertinoIcons.bell_fill),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  imagePathFilter,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//use in Add Card Buttons
class AddCardButton extends StatelessWidget {
  Function()? onPressed;
  String? child;

  AddCardButton({
    this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width * .85,
      decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(6.0),

          ),
      child: DottedBorder(
        color: SliderBlueTextColor,
        dashPattern: [
          3,
          6,
        ],
        // padding : const EdgeInsets.all(8),
        strokeWidth: 3,

        // borderType: BorderType.RRect,
        // radius: Radius.circular(12),
        padding: EdgeInsets.all(8),

        child: Center(
          child: TextButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: onPressed,
            child: Text(
              child ?? '',
              style: addCardButtonStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

// Button Custom Design Select Color, Select Size
class SelectSizeColorButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  SelectSizeColorButton({this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color! ? SliderBlueTextColor : SelectSizeTextColor,
          // textStyle: TextStyle(
          //   fontFamily: textFontFamilySegoeUI,
          //   fontSize: 18,
          //   color: color! ? ButtonWhiteTextColor : abc_CategoriesListViewBlack,
          //   fontWeight: FontWeight.w500,
          // ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            child ?? '',
            style: TextStyle(
              fontFamily: textFontFamilySegoeUI,
              fontSize: 18,
              color:
                  color! ? ButtonWhiteTextColor : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

// Button Buy NowCustom Design
class BuyNowColorButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  BuyNowColorButton({this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color! ? SliderBlueTextColor : SelectSizeTextColor,
          // textStyle: TextStyle(
          //   fontFamily: textFontFamilySegoeUI,
          //   fontSize: 18,
          //   color: color! ? ButtonWhiteTextColor : abc_CategoriesListViewBlack,
          //   fontWeight: FontWeight.w500,
          // ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            child ?? '',
            style: TextStyle(
              fontFamily: textFontFamilySegoeUI,
              fontSize: 18,
              color:
              color! ? ButtonWhiteTextColor : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

