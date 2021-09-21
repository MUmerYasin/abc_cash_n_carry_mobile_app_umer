import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//--------------------------------

// final List<String> imgList = [
//   imagePathProductSlider1,
//   imagePathProductSlider1,
//   imagePathProductSlider1,
//   imagePathProductSlider1,
// ];

//--------------------------------

/// Main Class for Making Carousel Slider
class HomePageCarouselWithIndicator extends StatefulWidget {
  List<String> imgList;
   HomePageCarouselWithIndicator({Key? key, required this.imgList,}) : super(key: key);

  @override
  _HomePageCarouselWithIndicatorState createState() =>
      _HomePageCarouselWithIndicatorState();
}

class _HomePageCarouselWithIndicatorState
    extends State<HomePageCarouselWithIndicator> {


  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: widget.imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      decoration: BoxDecoration(
                          // color: Colors.amber
                          ),

                      ///Add Images and Dots
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Image.asset(
                            i,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),

                          ///For Dots Show in Picture
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 12.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: widget.imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (_current == entry.key
                                              ? Colors.blue
                                              : Colors.white)
                                          .withOpacity(
                                              _current == entry.key ? 1 : 1),
                                    ),

                                    // color: (Theme.of(context).brightness == Brightness.dark
                                    //     ? Colors.white
                                    //     : Colors.red)
                                    //     .withOpacity(_current == entry.key ? 0.9 : 0.4),),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                        //
                      ),
                      // Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
