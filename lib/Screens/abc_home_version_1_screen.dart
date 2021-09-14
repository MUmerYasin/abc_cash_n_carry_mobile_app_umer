import 'package:abc_cash_n_carry/Configs/Strings/listview_Data_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/screen_titles_strings.dart';
import 'package:abc_cash_n_carry/Configs/Strings/text_fields_strings.dart';
import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:abc_cash_n_carry/Configs/fonts/abc_cash_n_carry_text_style.dart';
import 'package:abc_cash_n_carry/Helpers/help_button.dart';
import 'package:abc_cash_n_carry/Helpers/help_text_field.dart';
import 'package:abc_cash_n_carry/Screens/abc_signup_screen.dart';
import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class ABCHomeVersionOneScreen extends StatefulWidget {
  const ABCHomeVersionOneScreen({Key? key}) : super(key: key);

  @override
  _ABCHomeVersionOneScreenState createState() => _ABCHomeVersionOneScreenState();
}

class _ABCHomeVersionOneScreenState extends State<ABCHomeVersionOneScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ButtonWhiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 40.0,
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Custom Back Screen Button
              CustomNotificationScreenButton(),
              /// Search Bar
              SearchBarTextField(),

              SizedBox(
                height: 15.0,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //
              //   ],
              // ),

              // ListView(
              //   // This next line does the trick.
              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   physics: ClampingScrollPhysics(),
              //   children: <Widget>[
              //
              //   ],
              // ),

              // Row(
              //   children: [
              //     Expanded(
              //       child: SizedBox(
              //           height: 70,
              //           width: MediaQuery.of(context).size.width,
              //           child: GridView.custom(
              //             scrollDirection : Axis.horizontal,
              //             shrinkWrap : false,
              //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //               crossAxisCount: 1,
              //               mainAxisSpacing: 6.0,
              //               crossAxisSpacing: 6.0,
              //             ),
              //             childrenDelegate: SliverChildListDelegate(
              //               [
              //                 SizedBox(
              //                   height: 70.0,
              //                   width: 150.0,
              //                   child: Neumorphic(
              //                     style: NeumorphicStyle(
              //
              //                     ),
              //                     child:  Stack(
              //                       children: <Widget>[
              //
              //                         Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                         Container(
              //                           width: double.infinity,
              //                           height: double.infinity,
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(5.0),
              //                             gradient: LinearGradient(
              //                               begin: Alignment(-1.0, 0.06),
              //                               end: Alignment(1.0, 0.12),
              //                               colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                               stops: [0.0, 1.0],
              //                             ),
              //                             boxShadow: [
              //                               BoxShadow(
              //                                 color: abc_CategoriesListViewBlack,
              //                                 offset: Offset(0, 15),
              //                                 blurRadius: 31,
              //                               ),
              //                             ],
              //                           ),
              //                           child: Center(
              //                             child: Text(
              //                               aBC_ListViewHeadingStringMale,
              //                               style: categoriesListViewHeadingStyle,
              //                               textAlign: TextAlign.center,
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 70.0,
              //                   width: 150.0,
              //                   child: Neumorphic(
              //                     style: NeumorphicStyle(
              //
              //                     ),
              //                     child:  Stack(
              //                       children: <Widget>[
              //
              //                         Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                         Container(
              //                           width: double.infinity,
              //                           height: double.infinity,
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(5.0),
              //                             gradient: LinearGradient(
              //                               begin: Alignment(-1.0, 0.06),
              //                               end: Alignment(1.0, 0.12),
              //                               colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                               stops: [0.0, 1.0],
              //                             ),
              //                             boxShadow: [
              //                               BoxShadow(
              //                                 color: abc_CategoriesListViewBlack,
              //                                 offset: Offset(0, 15),
              //                                 blurRadius: 31,
              //                               ),
              //                             ],
              //                           ),
              //                           child: Center(
              //                             child: Text(
              //                               aBC_ListViewHeadingStringMale,
              //                               style: categoriesListViewHeadingStyle,
              //                               textAlign: TextAlign.center,
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 70.0,
              //                   width: 150.0,
              //                   child: Neumorphic(
              //                     style: NeumorphicStyle(
              //
              //                     ),
              //                     child:  Stack(
              //                       children: <Widget>[
              //
              //                         Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                         Container(
              //                           width: double.infinity,
              //                           height: double.infinity,
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(5.0),
              //                             gradient: LinearGradient(
              //                               begin: Alignment(-1.0, 0.06),
              //                               end: Alignment(1.0, 0.12),
              //                               colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                               stops: [0.0, 1.0],
              //                             ),
              //                             boxShadow: [
              //                               BoxShadow(
              //                                 color: abc_CategoriesListViewBlack,
              //                                 offset: Offset(0, 15),
              //                                 blurRadius: 31,
              //                               ),
              //                             ],
              //                           ),
              //                           child: Center(
              //                             child: Text(
              //                               aBC_ListViewHeadingStringMale,
              //                               style: categoriesListViewHeadingStyle,
              //                               textAlign: TextAlign.center,
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //           )
              //       ),
              //     ),
              //   ],
              // ),


              // SizedBox(
              //   height: 90,
              //   width: double.infinity,
              //   child: GridView.builder(
              //     // clipBehavior : Clip.hardEdge,
              //     // reverse: true,
              //     scrollDirection : Axis.horizontal,
              //     physics: AlwaysScrollableScrollPhysics(),
              //     shrinkWrap : true,
              //     itemCount: 1,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 1,
              //       mainAxisSpacing:10.0,
              //       crossAxisSpacing:10.0,
              //     ),
              //     itemBuilder: (ctx, index) {
              //       return ListView(
              //         scrollDirection : Axis.horizontal,
              //         shrinkWrap : true,
              //         children: [
              //           SizedBox(
              //             height: 70.0,
              //             width: 150.0,
              //             child: Neumorphic(
              //               style: NeumorphicStyle(
              //
              //               ),
              //               child:  Stack(
              //                 children: <Widget>[
              //
              //                   Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                   Container(
              //                     width: double.infinity,
              //                     height: double.infinity,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(5.0),
              //                       gradient: LinearGradient(
              //                         begin: Alignment(-1.0, 0.06),
              //                         end: Alignment(1.0, 0.12),
              //                         colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                         stops: [0.0, 1.0],
              //                       ),
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: abc_CategoriesListViewBlack,
              //                           offset: Offset(0, 15),
              //                           blurRadius: 31,
              //                         ),
              //                       ],
              //                     ),
              //                     child: Center(
              //                       child: Text(
              //                         aBC_ListViewHeadingStringMale,
              //                         style: categoriesListViewHeadingStyle,
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ),
              //                   ),
              //
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             height: 70.0,
              //             width: 150.0,
              //             child: Neumorphic(
              //               style: NeumorphicStyle(
              //
              //               ),
              //               child:  Stack(
              //                 children: <Widget>[
              //
              //                   Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                   Container(
              //                     width: double.infinity,
              //                     height: double.infinity,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(5.0),
              //                       gradient: LinearGradient(
              //                         begin: Alignment(-1.0, 0.06),
              //                         end: Alignment(1.0, 0.12),
              //                         colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                         stops: [0.0, 1.0],
              //                       ),
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: abc_CategoriesListViewBlack,
              //                           offset: Offset(0, 15),
              //                           blurRadius: 31,
              //                         ),
              //                       ],
              //                     ),
              //                     child: Center(
              //                       child: Text(
              //                         aBC_ListViewHeadingStringMale,
              //                         style: categoriesListViewHeadingStyle,
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ),
              //                   ),
              //
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             height: 70.0,
              //             width: 150.0,
              //             child: Neumorphic(
              //               style: NeumorphicStyle(
              //
              //               ),
              //               child:  Stack(
              //                 children: <Widget>[
              //
              //                   Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
              //
              //                   Container(
              //                     width: double.infinity,
              //                     height: double.infinity,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(5.0),
              //                       gradient: LinearGradient(
              //                         begin: Alignment(-1.0, 0.06),
              //                         end: Alignment(1.0, 0.12),
              //                         colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
              //                         stops: [0.0, 1.0],
              //                       ),
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: abc_CategoriesListViewBlack,
              //                           offset: Offset(0, 15),
              //                           blurRadius: 31,
              //                         ),
              //                       ],
              //                     ),
              //                     child: Center(
              //                       child: Text(
              //                         aBC_ListViewHeadingStringMale,
              //                         style: categoriesListViewHeadingStyle,
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ),
              //                   ),
              //
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       );
              //     },
              //   ),
              // ),


          SizedBox(
            height: 75.0,
            width: double.infinity,
            child: ListView(
              scrollDirection : Axis.horizontal,
              shrinkWrap : true,
              children: [
                CustomCategoriesListViewItems(
                  listViewText: aBC_ListViewHeadingStringFemale,
                  imagePaths: imagePathPngImage1,
                  linearGradientColorOne: abc_CategoriesListViewLightBlue,
                  linearGradientColorTwo: abc_CategoriesListViewBlue,
                ),
                    // SizedBox(
                //   height: 70.0,
                //   width: 150.0,
                //   child: Neumorphic(
                //     style: NeumorphicStyle(
                //
                //     ),
                //     child:  Stack(
                //       children: <Widget>[
                //
                //         Image.asset(imagePathPngImage1, fit: BoxFit.fitWidth, width: double.infinity,),
                //
                //         Container(
                //           width: double.infinity,
                //           height: double.infinity,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(5.0),
                //             gradient: LinearGradient(
                //               begin: Alignment(-1.0, 0.06),
                //               end: Alignment(1.0, 0.12),
                //               colors: [abc_CategoriesListViewLightBlue, abc_CategoriesListViewBlue],
                //               stops: [0.0, 1.0],
                //             ),
                //             boxShadow: [
                //               BoxShadow(
                //                 color: abc_CategoriesListViewBlack,
                //                 offset: Offset(0, 15),
                //                 blurRadius: 31,
                //               ),
                //             ],
                //           ),
                //           child: Center(
                //             child: Text(
                //               aBC_ListViewHeadingStringMale,
                //               style: categoriesListViewHeadingStyle,
                //               textAlign: TextAlign.center,
                //             ),
                //           ),
                //         ),
                //
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  width: 10,
                ),
                CustomCategoriesListViewItems(
                  listViewText: aBC_ListViewHeadingStringMale,
                  imagePaths: imagePathPngImage2,
                  linearGradientColorOne: abc_CategoriesListViewRed,
                  linearGradientColorTwo: abc_CategoriesListViewDarkRed,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomCategoriesListViewItems(
                  listViewText: aBC_ListViewHeadingStringKids,
                  imagePaths: imagePathPngImage3,
                  linearGradientColorOne: abc_CategoriesListViewDarkGreen,
                  linearGradientColorTwo: abc_CategoriesListViewGreen,
                ),
              ],
            ),
          ),


            // CustomScrollView(
            //   // physics: ClampingScrollPhysics(),
            //   // scrollDirection : Axis.horizontal,
            //     shrinkWrap: true,
            //     slivers: <Widget>[
            //       SliverPadding(
            //         padding: const EdgeInsets.only(left: 10.0,),
            //         sliver: SliverList(
            //           delegate: SliverChildListDelegate(
            //             <Widget>[
            //
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),

            ],
          ),
        ),
      ),
    );
  }
}


class CustomCategoriesListViewItems extends StatelessWidget {
  String imagePaths;
  Color linearGradientColorOne;
  Color linearGradientColorTwo;
  String listViewText;
  CustomCategoriesListViewItems({Key? key, required this.imagePaths, required this.linearGradientColorOne, required this.linearGradientColorTwo, required this.listViewText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70.0,
      width: 150.0,
      child: Neumorphic(
        child:  Stack(
          children: <Widget>[

            Image.asset(imagePaths, fit: BoxFit.fitWidth, width: double.infinity,),

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
    );
  }
}


