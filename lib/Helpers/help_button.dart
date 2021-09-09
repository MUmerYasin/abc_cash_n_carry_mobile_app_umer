import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


//use in Login Button
class SmallBlueBackgroundButton extends StatelessWidget {
  const SmallBlueBackgroundButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

        child:
        Stack(
          children: <Widget>[

              // Adobe XD layer: 'Rectangle' (shape)
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(6.0),
              //     gradient: LinearGradient(
              //       begin: Alignment(0.0, -1.0),
              //       end: Alignment(0.0, 1.0),
              //       colors: [const Color(0xff667eea), const Color(0xff64b6ff)],
              //       stops: [0.0, 1.0],
              //     ),
              //
              //
              //
              //   ),
              // ),




            // Adobe XD layer: 'Rectangle' (shape)
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width*.75,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: SimpleTextColor, offset: Offset(0, 4), blurRadius: 10.0,  spreadRadius:3.0,)
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                  gradient: LinearGradient(
                    begin: Alignment(-0.95, 0.0),
                    end: Alignment(1.0, 0.0),
                    colors: [SliderBlueTextColor, abc_cash_n_carry_Color8],
                    stops: [0.0, 1.0],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,),

                  onPressed: (){},

                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontFamily: textFontFamilySegoeUI,
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      letterSpacing: -0.3858822937011719,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Adobe XD layer: 'Login' (text)


          ],
        ),
    );
  }
}
