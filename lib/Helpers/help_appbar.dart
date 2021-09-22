import 'package:abc_cash_n_carry/generated/assets_images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// AppBar
//AppBar, use in Back Button in top of screen
class CustomBackScreenButton extends StatelessWidget
    implements PreferredSizeWidget {
  // implement preferredSize
  @override
  Size get preferredSize => Size.fromHeight(200);

  const CustomBackScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        left: 25.0,
      ),
      child: Row(
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
      ),
    );
  }
}

//AppBar,use in Back Button, Notification button,  in top of all screen
class CustomAppBarBackAndNotificationButtons extends StatelessWidget
    implements PreferredSizeWidget {
  //  implement preferredSize
  @override
  Size get preferredSize => Size.fromHeight(200);

  CustomAppBarBackAndNotificationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 18, right: 18, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Back Button
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              imagePathBackScreenButton,
            ),
          ),

          /// Cart icon
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(CupertinoIcons.cart),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//AppBar, use in Drawer, Notification button, Flitter in top of all screen
class CustomAppBarDrawerAndNotificationButtons extends StatelessWidget
    implements PreferredSizeWidget {
  // implement preferredSize
  @override
  Size get preferredSize => Size.fromHeight(200);

  CustomAppBarDrawerAndNotificationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 18, right: 18, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Drawer
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset(
              imagePathMenuBar,
            ),
          ),

          /// Barcode /// Cart
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(CupertinoIcons.barcode_viewfinder),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(CupertinoIcons.cart),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}