import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';

//use in All Buttons
class SmallBlueBackgroundButton extends StatelessWidget {

  Function()? onPressed;
  String? child;
   SmallBlueBackgroundButton({this.onPressed, this.child,});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width*.85,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26, offset: Offset(0, 4), blurRadius: 15.0, spreadRadius:4.0,),
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
          style: ElevatedButton.styleFrom(primary: Colors.transparent,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent,),

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
          onTap: (){
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
  const CustomNotificationScreenButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            imagePathBackScreenButton,
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(CupertinoIcons.bell_fill),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  imagePathFilter,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

//use in Add Card Buttons
class AddCardButton extends StatelessWidget {

  Function()? onPressed;
  String? child;
  AddCardButton({this.onPressed, this.child,});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width*.85,
        decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(6.0),

        ),
        child:

          DottedBorder(
            color: SliderBlueTextColor,
            dashPattern: [3, 6,],
            // padding : const EdgeInsets.all(8),
            strokeWidth: 3,

            // borderType: BorderType.RRect,
            // radius: Radius.circular(12),
            padding: EdgeInsets.all(8),


            child:Center(
              child: TextButton(
                style: ElevatedButton.styleFrom(primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,),

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

