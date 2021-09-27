import 'package:flutter/material.dart';

// class Utils{
//
//   static void showToast(BuildContext context,String? message) {
//     final scaffold = ScaffoldMessenger.of(context);
//     scaffold.showSnackBar(
//       SnackBar(
//         content: Text(message!),
//         action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
//       ),
//     );
//   }
//
// }

import 'package:flutter/material.dart';

successSnackBar(BuildContext context, {String? msg}) {
  final snackBar = SnackBar(
    content: Text(
      "$msg",
      style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width * 0.04),
    ),
    backgroundColor: Colors.green[700],
    duration: Duration(milliseconds: 1150),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

failedSnackBar(BuildContext context, {String? msg}) {
  final snackBar = SnackBar(
    content: Text(
      "$msg",
      style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width * 0.04),
    ),
    backgroundColor: Colors.red[700],
    duration: Duration(milliseconds: 1150),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
