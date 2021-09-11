import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

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
        )
      ],
    );
  }
}

