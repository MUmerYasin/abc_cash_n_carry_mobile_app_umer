import 'package:abc_cash_n_carry/Configs/colors/abc_cash_n_carry_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({Key? key}) : super(key: key);

  @override
  _SelectSizeState createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  bool _flag = true;

  List<String> _sizeList = ["S", "M", "L", "Xl"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
          width: double.infinity,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _sizeList.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                  color: abc_Color12,
                ),
                width: 50.0,
                child: Center(
                  child: Text(
                    _sizeList[index],
                    style: TextStyle(color: ButtonWhiteTextColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ColorWidget extends StatefulWidget {
  final Color? colorr;
  int? index;
  int? selectedIndex;
  Function(int?)? selectedColor;

  ColorWidget(
      {this.colorr, this.selectedIndex, this.index, this.selectedColor});

  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  // bool _selected=false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.selectedColor!(widget.index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.colorr,
          shape: BoxShape.circle,
        ),
        width: 80.0,
        child: widget.selectedIndex == widget.index
            ? Icon(FontAwesomeIcons.check)
            : null,
      ),
    );
  }
}
